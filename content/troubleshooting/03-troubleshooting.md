---
title: Known Issues
url: troubleshooting/known-issues
weight: 30
menu:
  main:
    parent: "Troubleshooting"
---

## storedownloadd
* `storedownloadd` queue gets stuck after an unsuccessful download and the process must be restarted for future downloads to work.
```
/var/log/commerce.log message when  storedownloadd is hanged:
May 21 17:13:40 admins-Mac storedownloadd[532]: DownloadManifest: removePurgeablePath: /var/folders/qg/yc8wn1f13jb_mly2mj34pfkh0000gn/C/com.apple.appstore/0
May 21 17:13:40 admins-Mac storedownloadd[532]: DownloadQueue: Could not add download
May 21 17:13:40 admins-Mac storedownloadd[532]: DownloadQueue: Will start any ready downloads anyways.
```
## Only one local user can be MDM enabled at a time

* https://developer.apple.com/library/content/documentation/Miscellaneous/Reference/MobileDeviceManagementProtocolRef/3-MDM_Protocol/MDM_Protocol.html
* Jamf-specific info isn't necessarily relevant, but helps illustrate issue: https://www.jamf.com/jamf-nation/articles/372/enabling-mdm-for-local-user-accounts

# DEP & MDM Testing + Troubleshooting

## Force DEP check in

This command will force a machine to check up on its DEP configuration record, display configuration contents, and prompt user to enroll in MDM if the machine currently isn't. 

    sudo /usr/libexec/mdmclient dep nag

## Check if a machine was enrolled via DEP (10.13+)

This command will display 'An enrollment profile is currently installed on this system' on a device if it was enrolled via DEP. Enrolling via methods other than DEP in 10.13.2 and beyond require manual user approval for complete MDM capabilities.

    /usr/bin/profiles status -type enrollment

## DEP & MDM Debug Logging

Enable MDM debug logging

For macOS 10.12+ use this configuration profile: https://gist.github.com/opragel/2b9c518f9a27dce787ed45da832708e2

For OS X 10.11 and below, use the following commands to enable MDM debug logging:

    sudo defaults write /Library/Preferences/com.apple.MCXDebug debugOutput -2
    sudo defaults write /Library/Preferences/com.apple.MCXDebug collateLogs 1
    sudo touch /var/db/MDM_EnableDebug

Logs of interest:

    /Library/Logs/ManagedClient/ManagedClient.log
    /var/log/commerce.log

Stream relevant logs on macOS 10.12+:

    log stream --info --debug --predicate 'subsystem contains "com.apple.ManagedClient.cloudconfigurationd"'
    log stream --info --debug --predicate 'processImagePath contains "mdmclient" OR processImagePath contains "storedownloadd"'


## Re-enroll a DEP Mac without having to wipe the device

10.13 (Warning, this method is unsupported by Apple. Ensure you do not depend on it for production workflows.)

https://gist.github.com/opragel/12555098f5894267c3aba2a7c023a823

10.12

    # Remove indicator that setup assistant has already run
    sudo rm /var/db/.AppleSetupDone
    # Clear all configuration profiles off machine (not entirely clean)
    sudo rm -rf /var/db/ConfigurationProfiles/
    # Remove Apple Push Notification service daemon keychain
    sudo rm /Library/Keychains/apsd.keychain
    # Reboot the machine. It should bring you back to setup assistant
    # where you can re-enroll using DEP.

# Setup Assistant

## Run Setup Assistant as an app in regular user space
    sudo /System/Library/CoreServices/Setup\ Assistant.app/Contents/MacOS/Setup\ Assistant -MBDebug

## Setup Assistant Troubleshooting

* Press Command + Option + Control + T during Setup Assistant to open Terminal.
* Press Command + Option + Control + C during Setup Assistant to open Console.
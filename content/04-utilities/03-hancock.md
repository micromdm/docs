---
title: Hancock
url: utilities/hancock
weight: 30
menu:
  main:
    parent: "Utilities"
---

By default, the enrollment profile served by MicroMDM is unsigned. This feature is on the roadmap, but for now you can use the [Hancock App](https://github.com/JeremyAgost/Hancock) to sign the profile. 
You can also use the [ProfileSigner](https://github.com/nmcspadden/ProfileSigner) CLI tool.

1) Get the enrollment profile

```bash
curl -o enroll.mobileconfig -L https://micromdm/mdm/enroll
```

2) Open the Hancock App, and choose a certificate from your keychain. 
Make sure to select the "Developer ID Installer" certificate if you want a certificate which is issued by apple and will be trusted by default. 

3) Drag and drop the `.mobileconfig` file onto the GUI. It's important to drag and drop, otherwise Hancock tries to read your profile as if it was a package archive and fails. 
Drag and drop avoids that. 

4) Click Sign. You will be prompted for credentials and then for a path to save your signed enrollment profile. 

5. Import the enrollment profile to the server.

```bash
mdmctl apply profiles -f /path/to/enroll.mobileconfig
```
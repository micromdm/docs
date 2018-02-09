---
title: Networking Considerations
url: network
---

## Clients
Allow outbound connections to Apple’s 17.0.0.0/8 block, over TCP port 5223, and 443.

## MDM Server
Allow outbound connections to Apple’s 17.0.0.0/8 block over TCP port 2195 and 2196.

| Port  | Description                                                                                       | Direction                                                                      |
|------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|
| 443  | Used as a fallback on Wi-Fi only, when devices are unable to communicate to APNs on port 5223.    | Outbound from computers and mobile devices to the APNs Server.                  |
| 2195 | The port used to send messages from the MicroMDM Server to APNs.                                  | Outbound from the MicroMDM Server to the APNs Server.                           |
| 2196 | The port used by the MicroMDM Server to connect to APNs for feedback.                             | Outbound from the MicroMDM Server to the APNs Server.                           |
| 5223 | The port used to send messages from APNs to the iOS mobile devices and computers in your network. | Outbound from computers and iOS mobile devices, and inbound to the APNs server. |

For additional information:

* https://resources.jamf.com/documents/products/documentation/making-apple-push-notification-service-available-on-your-network.pdf
* https://developer.apple.com/library/content/technotes/tn2265/_index.html
* https://support.apple.com/en-us/HT203609
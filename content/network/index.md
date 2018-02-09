---
title: Networking Considerations
url: network
---

To use Apple Push Notification service (APNs), your clients need a direct and persistent connection to Apple's servers.

MicroMDM uses the HTTP/2 API for APNs, which may differ from other vendor implementations.

## Clients
Allow outbound connections to Apple’s 17.0.0.0/8 block, over TCP port 2195, 2196, 5223, and 443.

## MDM Server
Allow outbound connections to Apple’s 17.0.0.0/8 block over TCP 443.

| Port | Description                                                                                                                           | Direction                                                |
|------|---------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------|
| 443  | Required during device activation, and used as a fallback on Wi-Fi only, when devices are unable to communicate to APNs on port 5223. | Outbound from MDM Server and clients to the APNs Server. |
| 2195 | The port used to send notifications from the clients to APNs.                                                                         | Outbound from clients, and inbound to the APNs server.   |
| 2196 | The port used by the clients to connect to APNs for feedback.                                                                         | Outbound from clients, and inbound to the APNs server.   |
| 5223 | The port used to send messages from APNs to the clients.                                                                              | Outbound from clients, and inbound to the APNs server.   |

For additional information:

* https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CommunicatingwithAPNs.html
* https://support.apple.com/en-us/HT203609
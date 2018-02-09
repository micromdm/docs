## Send APNS Push for UDID
# Triggers an APNS notification for a specific Device UDID.
curl "https://dev.micromdm.io/push/564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4" \
     -u 'micromdm:mdmdev'

## Send APNS Push for UDID Duplicate
# Triggers an APNS notification for a specific Device UDID.
curl "https://dev.micromdm.io/v1/dep/devices?serials=MAC_SERIAL" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "serials": [
    "MAC_SERIAL"
  ]
}'

## LogOutUser
# List Users on macOs and shared ipad.
# 
# ##### Request
# 
#     HTTP/1.1 200 OK
#     Strict-Transport-Security: max-age=63072000; includeSubDomains; preload
#     Date: Tue, 17 Oct 2017 12:42:18 GMT
#     Content-Length: 138
#     Content-Type: text/plain; charset=utf-8
#     Connection: close
# 
#     {
#       "payload": {
#         "CommandUUID": "bfd3a759-b4d3-4225-8844-bdec7104b84b",
#         "Command": {
#           "request_type": "UserList"
#         }
#       }
#     }
# 
# #### Response
# 
#     <?xml version="1.0" encoding="UTF-8"?>
#     <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
#     <plist version="1.0">
#     <dict>
#     	<key>CommandUUID</key>
#     	<string>bfd3a759-b4d3-4225-8844-bdec7104b84b</string>
#     	<key>Status</key>
#     	<string>Acknowledged</string>
#     	<key>UDID</key>
#     	<string>564DA875-35DE-E49B-7FCF-6A8FFBE52EF7</string>
#     	<key>Users</key>
#     	<array>
#     		<dict>
#     			<key>FullName</key>
#     			<string>groob</string>
#     			<key>IsLoggedIn</key>
#     			<true/>
#     			<key>MobileAccount</key>
#     			<false/>
#     			<key>UID</key>
#     			<integer>501</integer>
#     			<key>UserGUID</key>
#     			<string>853EE121-D952-4D89-AFC7-83B1043FB901</string>
#     			<key>UserName</key>
#     			<string>groob</string>
#     		</dict>
#     	</array>
#     </dict>
#     </plist>
# 
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: text/plain; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "request_type": "LogoutUser",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## DeleteUser
# List Users on macOs and shared ipad.
# 
# ##### Request
# 
#     HTTP/1.1 200 OK
#     Strict-Transport-Security: max-age=63072000; includeSubDomains; preload
#     Date: Tue, 17 Oct 2017 12:42:18 GMT
#     Content-Length: 138
#     Content-Type: text/plain; charset=utf-8
#     Connection: close
# 
#     {
#       "payload": {
#         "CommandUUID": "bfd3a759-b4d3-4225-8844-bdec7104b84b",
#         "Command": {
#           "request_type": "UserList"
#         }
#       }
#     }
# 
# #### Response
# 
#     <?xml version="1.0" encoding="UTF-8"?>
#     <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
#     <plist version="1.0">
#     <dict>
#     	<key>CommandUUID</key>
#     	<string>bfd3a759-b4d3-4225-8844-bdec7104b84b</string>
#     	<key>Status</key>
#     	<string>Acknowledged</string>
#     	<key>UDID</key>
#     	<string>564DA875-35DE-E49B-7FCF-6A8FFBE52EF7</string>
#     	<key>Users</key>
#     	<array>
#     		<dict>
#     			<key>FullName</key>
#     			<string>groob</string>
#     			<key>IsLoggedIn</key>
#     			<true/>
#     			<key>MobileAccount</key>
#     			<false/>
#     			<key>UID</key>
#     			<integer>501</integer>
#     			<key>UserGUID</key>
#     			<string>853EE121-D952-4D89-AFC7-83B1043FB901</string>
#     			<key>UserName</key>
#     			<string>groob</string>
#     		</dict>
#     	</array>
#     </dict>
#     </plist>
# 
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: text/plain; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "request_type": "DeleteUser",
  "user_name": "_sandbox",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## DeviceInformation
# Queue default DeviceInformation command for a UDID.
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "request_type": "DeviceInformation",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## SecurityInfo
# Queue default DeviceInformation command for a UDID.
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "request_type": "SecurityInfo",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## UserList
# List Users on macOs and shared ipad.
# 
# ##### Request
# 
#     HTTP/1.1 200 OK
#     Strict-Transport-Security: max-age=63072000; includeSubDomains; preload
#     Date: Tue, 17 Oct 2017 12:42:18 GMT
#     Content-Length: 138
#     Content-Type: text/plain; charset=utf-8
#     Connection: close
# 
#     {
#       "payload": {
#         "CommandUUID": "bfd3a759-b4d3-4225-8844-bdec7104b84b",
#         "Command": {
#           "request_type": "UserList"
#         }
#       }
#     }
# 
# #### Response
# 
#     <?xml version="1.0" encoding="UTF-8"?>
#     <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
#     <plist version="1.0">
#     <dict>
#     	<key>CommandUUID</key>
#     	<string>bfd3a759-b4d3-4225-8844-bdec7104b84b</string>
#     	<key>Status</key>
#     	<string>Acknowledged</string>
#     	<key>UDID</key>
#     	<string>564DA875-35DE-E49B-7FCF-6A8FFBE52EF7</string>
#     	<key>Users</key>
#     	<array>
#     		<dict>
#     			<key>FullName</key>
#     			<string>groob</string>
#     			<key>IsLoggedIn</key>
#     			<true/>
#     			<key>MobileAccount</key>
#     			<false/>
#     			<key>UID</key>
#     			<integer>501</integer>
#     			<key>UserGUID</key>
#     			<string>853EE121-D952-4D89-AFC7-83B1043FB901</string>
#     			<key>UserName</key>
#     			<string>groob</string>
#     		</dict>
#     	</array>
#     </dict>
#     </plist>
# 
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: text/plain; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "request_type": "UserList",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## EraseDevice
# Lock the device immediately.
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "pin": "123456",
  "request_type": "EraseDevice",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## DeviceLock
# Lock the device immediately.
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "pin": "123459",
  "request_type": "DeviceLock",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## Settings
# Lock the device immediately.
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "settings": [
    {
      "device_name": "foo-bar-baz",
      "item": "DeviceName"
    }
  ],
  "request_type": "Settings",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## ScheduleOSUpdateScan
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "request_type": "ScheduleOSUpdateScan",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## AvailableOSUpdates
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "request_type": "AvailableOSUpdates",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## OSUpdateStatus
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "request_type": "OSUpdateStatus",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## ScheduleOSUpdate
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "request_type": "ScheduleOSUpdate",
  "udid": "564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4"
}'

## Block
# Triggers an APNS notification for a specific Device UDID.
curl -X "POST" "https://dev.micromdm.io/v1/devices/564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4/block" \
     -u 'micromdm:mdmdev'

## Send APNS Push for UserID
# Triggers an APNS notification for a specific Device UDID.
curl "https://dev.micromdm.io/push/015C579B-BB67-4978-97F9-0D01BED615BD" \
     -u 'micromdm:mdmdev'

## InstallUserProfile
# List Users on macOs and shared ipad.
# 
# ##### Request
# 
#     HTTP/1.1 200 OK
#     Strict-Transport-Security: max-age=63072000; includeSubDomains; preload
#     Date: Tue, 17 Oct 2017 12:42:18 GMT
#     Content-Length: 138
#     Content-Type: text/plain; charset=utf-8
#     Connection: close
# 
#     {
#       "payload": {
#         "CommandUUID": "bfd3a759-b4d3-4225-8844-bdec7104b84b",
#         "Command": {
#           "request_type": "UserList"
#         }
#       }
#     }
# 
# #### Response
# 
#     <?xml version="1.0" encoding="UTF-8"?>
#     <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
#     <plist version="1.0">
#     <dict>
#     	<key>CommandUUID</key>
#     	<string>bfd3a759-b4d3-4225-8844-bdec7104b84b</string>
#     	<key>Status</key>
#     	<string>Acknowledged</string>
#     	<key>UDID</key>
#     	<string>564DA875-35DE-E49B-7FCF-6A8FFBE52EF7</string>
#     	<key>Users</key>
#     	<array>
#     		<dict>
#     			<key>FullName</key>
#     			<string>groob</string>
#     			<key>IsLoggedIn</key>
#     			<true/>
#     			<key>MobileAccount</key>
#     			<false/>
#     			<key>UID</key>
#     			<integer>501</integer>
#     			<key>UserGUID</key>
#     			<string>853EE121-D952-4D89-AFC7-83B1043FB901</string>
#     			<key>UserName</key>
#     			<string>groob</string>
#     		</dict>
#     	</array>
#     </dict>
#     </plist>
# 
curl -X "POST" "https://dev.micromdm.io/v1/commands" \
     -H 'Content-Type: application/json; charset=utf-8' \
     -u 'micromdm:mdmdev' \
     -d $'{
  "payload": "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjwhRE9DVFlQRSBwbGlzdCBQVUJMSUMgIi0vL0FwcGxlLy9EVEQgUExJU1QgMS4wLy9FTiIgImh0dHA6Ly93d3cuYXBwbGUuY29tL0RURHMvUHJvcGVydHlMaXN0LTEuMC5kdGQiPg0KPHBsaXN0IHZlcnNpb249IjEuMCI+DQo8ZGljdD4NCgk8a2V5PlBheWxvYWRDb250ZW50PC9rZXk+DQoJPGFycmF5Pg0KCQk8ZGljdD4NCgkJCTxrZXk+UGF5bG9hZERpc3BsYXlOYW1lPC9rZXk+DQoJCQk8c3RyaW5nPlNlY3VyaXR5ICZhbXA7IFByaXZhY3k8L3N0cmluZz4NCgkJCTxrZXk+UGF5bG9hZEVuYWJsZWQ8L2tleT4NCgkJCTx0cnVlLz4NCgkJCTxrZXk+UGF5bG9hZElkZW50aWZpZXI8L2tleT4NCgkJCTxzdHJpbmc+Y29tLmVjb3JwLmNvbmZpZy5zY3JlZW5zYXZlcjwvc3RyaW5nPg0KCQkJPGtleT5QYXlsb2FkVHlwZTwva2V5Pg0KCQkJPHN0cmluZz5jb20uYXBwbGUuc2NyZWVuc2F2ZXI8L3N0cmluZz4NCgkJCTxrZXk+UGF5bG9hZFVVSUQ8L2tleT4NCgkJCTxzdHJpbmc+OTY2ZWI3YmUtODFiZC1mOGNjLWYzZTMtMDc4ZDkzZjFiNGE0PC9zdHJpbmc+DQoJCQk8a2V5PlBheWxvYWRWZXJzaW9uPC9rZXk+DQoJCQk8aW50ZWdlcj4xPC9pbnRlZ2VyPg0KCQkJPGtleT5hc2tGb3JQYXNzd29yZDwva2V5Pg0KCQkJPHRydWUvPg0KICAgICAgICAgICAgPGtleT5hc2tGb3JQYXNzd29yZERlbGF5PC9rZXk+DQogICAgICAgICAgICA8aW50ZWdlcj41PC9pbnRlZ2VyPg0KCQk8L2RpY3Q+DQoJPC9hcnJheT4NCgk8a2V5PlBheWxvYWREZXNjcmlwdGlvbjwva2V5Pg0KCTxzdHJpbmc+RSBDb3JwIHNjcmVlbiBzYXZlciBzZXR0aW5nczwvc3RyaW5nPg0KCTxrZXk+UGF5bG9hZERpc3BsYXlOYW1lPC9rZXk+DQoJPHN0cmluZz5FIENvcnAgU2NyZWVuIFNhdmVyPC9zdHJpbmc+DQoJPGtleT5QYXlsb2FkSWRlbnRpZmllcjwva2V5Pg0KCTxzdHJpbmc+Y29tLmVjb3JwLmNvbmZpZy5zY3JlZW5zYXZlcjwvc3RyaW5nPg0KCTxrZXk+UGF5bG9hZE9yZ2FuaXphdGlvbjwva2V5Pg0KCTxzdHJpbmc+RSBDb3JwPC9zdHJpbmc+DQoJPGtleT5QYXlsb2FkUmVtb3ZhbERpc2FsbG93ZWQ8L2tleT4NCgk8ZmFsc2UvPg0KCTxrZXk+UGF5bG9hZFNjb3BlPC9rZXk+DQoJPHN0cmluZz5TeXN0ZW08L3N0cmluZz4NCgk8a2V5PlBheWxvYWRUeXBlPC9rZXk+DQoJPHN0cmluZz5Db25maWd1cmF0aW9uPC9zdHJpbmc+DQoJPGtleT5QYXlsb2FkVVVJRDwva2V5Pg0KCTxzdHJpbmc+MGRjMzE5YTAtYzMzMS0wMTMxLWVlYjUtMDAwYzI5NGFiODFiPC9zdHJpbmc+DQoJPGtleT5QYXlsb2FkVmVyc2lvbjwva2V5Pg0KCTxpbnRlZ2VyPjE8L2ludGVnZXI+DQo8L2RpY3Q+DQo8L3BsaXN0Pg0K",
  "request_type": "InstallProfile",
  "udid": "564DA875-35DE-E49B-7FCF-6A8FFBE52EF7"
}'

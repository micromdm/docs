---
title: "MDM Commands"
url: api/mdm-commands
weight: 10
menu:
  main:
    parent: "API"
---

## User List

### **POST** - /v1/commands

#### Description
List Users on macOs and shared ipad.

##### Request

    HTTP/1.1 200 OK
    Strict-Transport-Security: max-age=63072000; includeSubDomains; preload
    Date: Tue, 17 Oct 2017 12:42:18 GMT
    Content-Length: 138
    Content-Type: text/plain; charset=utf-8
    Connection: close

    {
      "payload": {
        "CommandUUID": "bfd3a759-b4d3-4225-8844-bdec7104b84b",
        "Command": {
          "request_type": "UserList"
        }
      }
    }

#### Response

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
    	<key>CommandUUID</key>
    	<string>bfd3a759-b4d3-4225-8844-bdec7104b84b</string>
    	<key>Status</key>
    	<string>Acknowledged</string>
    	<key>UDID</key>
    	<string>564DA875-35DE-E49B-7FCF-6A8FFBE52EF7</string>
    	<key>Users</key>
    	<array>
    		<dict>
    			<key>FullName</key>
    			<string>groob</string>
    			<key>IsLoggedIn</key>
    			<true/>
    			<key>MobileAccount</key>
    			<false/>
    			<key>UID</key>
    			<integer>501</integer>
    			<key>UserGUID</key>
    			<string>853EE121-D952-4D89-AFC7-83B1043FB901</string>
    			<key>UserName</key>
    			<string>groob</string>
    		</dict>
    	</array>
    </dict>
    </plist>


#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: text/plain; charset=utf-8" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "text/plain; charset=utf-8"
  ],
  "default": "text/plain; charset=utf-8"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### Description
List Users on macOs and shared ipad.

##### Request

    HTTP/1.1 200 OK
    Strict-Transport-Security: max-age=63072000; includeSubDomains; preload
    Date: Tue, 17 Oct 2017 12:42:18 GMT
    Content-Length: 138
    Content-Type: text/plain; charset=utf-8
    Connection: close

    {
      "payload": {
        "CommandUUID": "bfd3a759-b4d3-4225-8844-bdec7104b84b",
        "Command": {
          "request_type": "UserList"
        }
      }
    }

#### Response

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
    	<key>CommandUUID</key>
    	<string>bfd3a759-b4d3-4225-8844-bdec7104b84b</string>
    	<key>Status</key>
    	<string>Acknowledged</string>
    	<key>UDID</key>
    	<string>564DA875-35DE-E49B-7FCF-6A8FFBE52EF7</string>
    	<key>Users</key>
    	<array>
    		<dict>
    			<key>FullName</key>
    			<string>groob</string>
    			<key>IsLoggedIn</key>
    			<true/>
    			<key>MobileAccount</key>
    			<false/>
    			<key>UID</key>
    			<integer>501</integer>
    			<key>UserGUID</key>
    			<string>853EE121-D952-4D89-AFC7-83B1043FB901</string>
    			<key>UserName</key>
    			<string>groob</string>
    		</dict>
    	</array>
    </dict>
    </plist>


#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: text/plain; charset=utf-8" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "text/plain; charset=utf-8"
  ],
  "default": "text/plain; charset=utf-8"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### Description
Queue default DeviceInformation command for a UDID.

#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: application/json; charset=utf-8" \
    --data-raw "$body" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "application/json; charset=utf-8"
  ],
  "default": "application/json; charset=utf-8"
}
```

#### Body Parameters

- **body** should respect the following schema:

```
{
  "type": "string",
  "default": "{\"request_type\":\"DeviceInformation\",\"udid\":\"564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4\"}"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### Description
Queue default DeviceInformation command for a UDID.

#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: application/json; charset=utf-8" \
    --data-raw "$body" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "application/json; charset=utf-8"
  ],
  "default": "application/json; charset=utf-8"
}
```

#### Body Parameters

- **body** should respect the following schema:

```
{
  "type": "string",
  "default": "{\"request_type\":\"SecurityInfo\",\"udid\":\"564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4\"}"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### Description
List Users on macOs and shared ipad.

##### Request

    HTTP/1.1 200 OK
    Strict-Transport-Security: max-age=63072000; includeSubDomains; preload
    Date: Tue, 17 Oct 2017 12:42:18 GMT
    Content-Length: 138
    Content-Type: text/plain; charset=utf-8
    Connection: close

    {
      "payload": {
        "CommandUUID": "bfd3a759-b4d3-4225-8844-bdec7104b84b",
        "Command": {
          "request_type": "UserList"
        }
      }
    }

#### Response

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
    	<key>CommandUUID</key>
    	<string>bfd3a759-b4d3-4225-8844-bdec7104b84b</string>
    	<key>Status</key>
    	<string>Acknowledged</string>
    	<key>UDID</key>
    	<string>564DA875-35DE-E49B-7FCF-6A8FFBE52EF7</string>
    	<key>Users</key>
    	<array>
    		<dict>
    			<key>FullName</key>
    			<string>groob</string>
    			<key>IsLoggedIn</key>
    			<true/>
    			<key>MobileAccount</key>
    			<false/>
    			<key>UID</key>
    			<integer>501</integer>
    			<key>UserGUID</key>
    			<string>853EE121-D952-4D89-AFC7-83B1043FB901</string>
    			<key>UserName</key>
    			<string>groob</string>
    		</dict>
    	</array>
    </dict>
    </plist>


#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: text/plain; charset=utf-8" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "text/plain; charset=utf-8"
  ],
  "default": "text/plain; charset=utf-8"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### Description
Lock the device immediately.

#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: application/json; charset=utf-8" \
    --data-raw "$body" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "application/json; charset=utf-8"
  ],
  "default": "application/json; charset=utf-8"
}
```

#### Body Parameters

- **body** should respect the following schema:

```
{
  "type": "string",
  "default": "{\"request_type\":\"EraseDevice\",\"udid\":\"564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4\",\"pin\":\"123456\"}"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### Description
Lock the device immediately.

#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: application/json; charset=utf-8" \
    --data-raw "$body" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "application/json; charset=utf-8"
  ],
  "default": "application/json; charset=utf-8"
}
```

#### Body Parameters

- **body** should respect the following schema:

```
{
  "type": "string",
  "default": "{\"request_type\":\"DeviceLock\",\"udid\":\"564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4\",\"pin\":\"123459\"}"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### Description
Lock the device immediately.

#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: application/json; charset=utf-8" \
    --data-raw "$body" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "application/json; charset=utf-8"
  ],
  "default": "application/json; charset=utf-8"
}
```

#### Body Parameters

- **body** should respect the following schema:

```
{
  "type": "string",
  "default": "{\"request_type\":\"Settings\",\"udid\":\"564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4\",\"settings\":[{\"item\":\"DeviceName\",\"device_name\":\"foo-bar-baz\"}]}"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: application/json; charset=utf-8" \
    --data-raw "$body" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "application/json; charset=utf-8"
  ],
  "default": "application/json; charset=utf-8"
}
```

#### Body Parameters

- **body** should respect the following schema:

```
{
  "type": "string",
  "default": "{\"request_type\":\"ScheduleOSUpdateScan\",\"udid\":\"564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4\"}"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: application/json; charset=utf-8" \
    --data-raw "$body" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "application/json; charset=utf-8"
  ],
  "default": "application/json; charset=utf-8"
}
```

#### Body Parameters

- **body** should respect the following schema:

```
{
  "type": "string",
  "default": "{\"request_type\":\"AvailableOSUpdates\",\"udid\":\"564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4\"}"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: application/json; charset=utf-8" \
    --data-raw "$body" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "application/json; charset=utf-8"
  ],
  "default": "application/json; charset=utf-8"
}
```

#### Body Parameters

- **body** should respect the following schema:

```
{
  "type": "string",
  "default": "{\"request_type\":\"OSUpdateStatus\",\"udid\":\"564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4\"}"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

### **POST** - /v1/commands

#### CURL

```sh
curl -X POST "https://dev.micromdm.io/v1/commands" \
    -H "Content-Type: application/json; charset=utf-8" \
    --data-raw "$body" \
-u "micromdm":"mdmdev"
```

#### Header Parameters

- **Content-Type** should respect the following schema:

```
{
  "type": "string",
  "enum": [
    "application/json; charset=utf-8"
  ],
  "default": "application/json; charset=utf-8"
}
```

#### Body Parameters

- **body** should respect the following schema:

```
{
  "type": "string",
  "default": "{\"request_type\":\"ScheduleOSUpdate\",\"udid\":\"564DF4AE-96B5-72BF-02C4-6B8B94BA5BF4\"}"
}
```

#### Security

- Basic Authentication
  - **username**: micromdm
  - **password**: mdmdev

## References





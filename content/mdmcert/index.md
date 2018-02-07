---
title: mdmcert
url: mdmcert
---

First, sign up for https://mdmcert.download and verify your email. Once you're linked to the instructions page, you can follow the steps below.
Make sure you use the same email address in the steps below as you used to sign up.

Step 0. Make a folder to run the rest of the steps in.
```
mkdir -p mdmcert
cd mdmcert
```

Step 1. Generate a certificate that will be used to decrypt the certificate payload from mdmcert.download
```
openssl genrsa -out server.key 2048
openssl rsa -in server.key -out server.key
openssl req -sha256 -new -key server.key -out server.csr -subj "/CN=micromdm.mdmcert.download"
openssl x509 -req -sha256 -days 365 -in server.csr -signkey server.key -out server.crt

```

The above steps will create the following files:

```
.
├── server.crt
├── server.csr
└── server.key
```

Step 2. Create a Certificate Signing Request
```
certhelper provider -csr -cn=mdm-certtool -password=secret -country=US -email=your_email@acme.co
```

Now your folder will include the following files:

```
├── ProviderPrivateKey.key
├── ProviderUnsignedPushCertificateRequest.csr
├── server.crt
├── server.csr
└── server.key
```

Step 3. Create a request for mdmcert.download
```
certhelper mdmcert.download -cert ./server.crt -csr=ProviderUnsignedPushCertificateRequest.csr -email=your_email@acme.co
```

Wait for a file to be sent to your email. Might take a few minutes or up to a day. 

Step 4. Download and decrypt the file. 
```
certhelper mdmcert.download -cert ./server.crt -key ./server.key -decode ./mdm_signed_request.20171122_094910_220.plist.b64.p7
```

The decode step will create a file called `mdmcert.download_PushCertificateRequest`. Use that in step 5.

Step 5. Upload your `mdmcert.download_PushCertificateRequest` file to [https://identity.apple.com](https://identity.apple.com). You will be able to download a certificate that looks like "MDM_ McMurtrie Consulting LLC_Certificate.pem".

The `ProviderPrivateKey.key` file will be your private key for the push certificate. 

Keep all the files you've created today safely, to start micromdm you'll need:
- The certificate from identity.apple.com
- The private key, `ProviderPrivateKey.key`
- The password for the private key, the password you specified in step 2.


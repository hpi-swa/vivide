accessing
methpriStaticOverObjIcon

	^ Icons at: #methpriStaticOverObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self methpriStaticOverObjContents readStream)]
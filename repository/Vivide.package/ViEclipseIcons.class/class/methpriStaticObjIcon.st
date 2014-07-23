accessing
methpriStaticObjIcon

	^ Icons at: #methpriStaticObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self methpriStaticObjContents readStream)]
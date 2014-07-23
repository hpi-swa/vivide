accessing
methpriObjIcon

	^ Icons at: #methpriObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self methpriObjContents readStream)]
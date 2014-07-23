accessing
fieldPrivateStaticObjIcon

	^ Icons at: #fieldPrivateStaticObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self fieldPrivateStaticObjContents readStream)]
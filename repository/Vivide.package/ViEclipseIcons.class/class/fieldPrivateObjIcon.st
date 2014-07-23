accessing
fieldPrivateObjIcon

	^ Icons at: #fieldPrivateObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self fieldPrivateObjContents readStream)]
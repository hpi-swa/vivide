accessing
packageObjIcon

	^ Icons at: #packageObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self packageObjContents readStream)]
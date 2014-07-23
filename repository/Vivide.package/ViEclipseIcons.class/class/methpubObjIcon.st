accessing
methpubObjIcon

	^ Icons at: #methpubObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self methpubObjContents readStream)]
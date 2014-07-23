accessing
methpubStaticObjIcon

	^ Icons at: #methpubStaticObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self methpubStaticObjContents readStream)]
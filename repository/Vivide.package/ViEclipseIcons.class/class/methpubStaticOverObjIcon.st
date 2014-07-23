accessing
methpubStaticOverObjIcon

	^ Icons at: #methpubStaticOverObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self methpubStaticOverObjContents readStream)]
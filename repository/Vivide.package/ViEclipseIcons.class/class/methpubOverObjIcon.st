accessing
methpubOverObjIcon

	^ Icons at: #methpubOverObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self methpubOverObjContents readStream)]
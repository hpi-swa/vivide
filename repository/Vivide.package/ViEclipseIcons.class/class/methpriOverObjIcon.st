accessing
methpriOverObjIcon

	^ Icons at: #methpriOverObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self methpriOverObjContents readStream)]
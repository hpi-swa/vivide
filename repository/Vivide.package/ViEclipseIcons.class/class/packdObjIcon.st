accessing
packdObjIcon

	^ Icons at: #packdObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self packdObjContents readStream)]
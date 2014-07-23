accessing
classObjIcon

	^ Icons at: #classObj ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self classObjContents readStream)]
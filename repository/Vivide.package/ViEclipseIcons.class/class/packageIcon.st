accessing
packageIcon

	^ Icons at: #package ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self packageContents readStream)]
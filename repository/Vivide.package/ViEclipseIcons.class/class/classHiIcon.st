accessing
classHiIcon

	^ Icons at: #classHi ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self classHiContents readStream)]
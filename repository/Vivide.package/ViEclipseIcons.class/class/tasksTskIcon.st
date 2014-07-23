accessing
tasksTskIcon

	^ Icons at: #tasksTsk ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self tasksTskContents readStream)]
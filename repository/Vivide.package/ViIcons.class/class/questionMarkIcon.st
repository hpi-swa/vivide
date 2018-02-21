random-accessing
questionMarkIcon
	^ Icons
		at: #viQuestionMarkIcon3
		ifAbsentPut:[Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self questionMarkIconContents readStream)].
accessing
abstractCoIcon

	^ Icons at: #abstractCo ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self abstractCoContents readStream)]
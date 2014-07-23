accessing
overCoIcon

	^ Icons at: #overCo ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self overCoContents readStream)]
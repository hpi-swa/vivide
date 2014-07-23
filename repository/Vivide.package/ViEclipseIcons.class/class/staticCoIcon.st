accessing
staticCoIcon

	^ Icons at: #staticCo ifAbsentPut: [Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self staticCoContents readStream)]
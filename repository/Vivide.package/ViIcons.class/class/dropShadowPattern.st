patterns-accessing
dropShadowPattern

	^ Icons
		at: #dropShadowPattern
		ifAbsentPut:[Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self dropShadowContents readStream)].
images
background1

	^ self images
		at: #background1
		ifAbsentPut:[Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self background1Contents readStream)].
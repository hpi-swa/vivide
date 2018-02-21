random-accessing
instanceSideIcon
	
	^ Icons
		at: #instanceSide
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self instanceSideIconContents readStream) ].
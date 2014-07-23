accessing
classSideIcon
	
	^ Icons
		at: #classSide
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self classSideIconContents readStream) ].
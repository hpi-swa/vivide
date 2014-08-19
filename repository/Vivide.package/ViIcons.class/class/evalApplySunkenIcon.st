accessing
evalApplySunkenIcon
	
	^ Icons
		at: #evalApplySunken
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self evalApplySunkenContents readStream) ].
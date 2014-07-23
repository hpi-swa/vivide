as yet unclassified
evalApplyIcon
	
	^ Icons
		at: #evalApply
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self evalApplyIconContents readStream) ].
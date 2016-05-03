accessing - patterns
lightWoolPattern

	^ Icons
		at: #lightWoolPattern
		ifAbsentPut:[InfiniteForm with: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self lightWoolContents readStream))].
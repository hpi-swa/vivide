as yet unclassified
background2

	^ self images
		at: #background2
		ifAbsentPut:[InfiniteForm with: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self background2Contents readStream))].
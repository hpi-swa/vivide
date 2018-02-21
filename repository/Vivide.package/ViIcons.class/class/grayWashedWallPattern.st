patterns-accessing
grayWashedWallPattern

	^ Icons
		at: #grayWashedWallPattern
		ifAbsentPut:[InfiniteForm with: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self grayWashedWallContents readStream))].
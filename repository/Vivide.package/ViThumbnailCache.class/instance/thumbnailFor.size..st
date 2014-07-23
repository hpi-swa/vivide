as yet unclassified
thumbnailFor: filePath size: size

	^ (self thumbnails at: filePath ifAbsentPut: [Dictionary new])
		at: size
		ifAbsentPut: [(Form fromFileNamed: filePath) scaledToSize: size]
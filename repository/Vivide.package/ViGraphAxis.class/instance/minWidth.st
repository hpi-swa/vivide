as yet unclassified
minWidth

	^ self orientation == #horizontal
		ifTrue: [1]
		ifFalse: [
			self fontToUse height "rotated label"
				+ (self fontToUse widthOfString: self maxValString)
				+ (self fontToUse widthOfString: '  x')]
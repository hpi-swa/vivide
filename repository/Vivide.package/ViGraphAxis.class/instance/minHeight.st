as yet unclassified
minHeight

	^ self orientation == #vertical
		ifTrue: [1]
		ifFalse: [
			"line + number + label"
			self fontToUse height * 3]
as yet unclassified
scaleFactor

	^ self orientation == #vertical
		ifTrue: [self height / (maxVal - minVal)]
		ifFalse: [self width / (maxVal - minVal)]
as yet unclassified
scaleFactor

	| delta |
	delta := maxVal - self minVal.
	^ self orientation == #vertical
		ifTrue: [delta isZero ifTrue: [self height / 2] ifFalse: [self height / (maxVal - self minVal)]]
		ifFalse: [delta isZero ifTrue: [self width / 2] ifFalse: [self width / (maxVal - self minVal)]]
as yet unclassified
ratioOf: value

	| delta |
	delta := maxVal - minVal.
	delta isZero ifTrue: [^ 0.5].
	^ value - minVal / delta
accessing
minVal: aNumber

	minVal := aNumber.
	firstVal := firstVal max: (minVal ifNil: [0.0]).
	self changed.
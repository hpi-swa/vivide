accessing
firstVal: aNumber

	firstVal := aNumber max: (minVal ifNil: [0.0]).
	self changed.
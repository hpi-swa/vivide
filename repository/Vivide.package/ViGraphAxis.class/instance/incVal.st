accessing
incVal

	| result |
	result := incVal ifNil: [
		self orientation = #vertical
			ifTrue: [(self maxVal - self firstVal) / (self height / (self fontToUse height * 3))]
			ifFalse: [(self maxVal - self firstVal) / (self width / ((self fontToUse widthOfString: self maxValString) * 2))]].
	^ result isZero ifTrue: [0.1] ifFalse: [result]
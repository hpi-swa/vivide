actions
onClick

	self target ifNil: [^ self].
	
	self orientation = #vertical
		ifTrue: [self target width: self target optimalWidth].
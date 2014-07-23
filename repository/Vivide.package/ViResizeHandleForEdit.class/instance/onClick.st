actions
onClick

	self target ifNil: [^ self].
	
	self orientation = #horizontal
		ifTrue: [self target scrollingLimit: self target textMorph lineCount].
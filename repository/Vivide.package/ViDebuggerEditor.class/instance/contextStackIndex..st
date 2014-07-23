accessing
contextStackIndex: anIndex

	anIndex ifNil: [^ self].
	self contextStackIndex == anIndex ifTrue: [^ self].
	self debugger toggleContextStackIndex: anIndex.
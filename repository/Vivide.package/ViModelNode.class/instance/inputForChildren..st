as yet unclassified
inputForChildren: someObjects

	| previousInput |
	previousInput := self inputForChildren.
	
	someObjects
		ifNil: [self removeKey: #objects ifAbsent: []]
		ifNotNil: [self at: #objects put: someObjects asList].
	
	self flag: #performance. "mt: Does it make sense to check for input equality?"
	(previousInput hasEqualElements: self inputForChildren)
		ifFalse: [self triggerUpdateChildren].
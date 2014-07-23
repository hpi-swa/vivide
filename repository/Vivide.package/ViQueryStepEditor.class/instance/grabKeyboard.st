events
grabKeyboard
	
	self expand.
	self ui definitionEdit visible
		ifFalse: [self ui referenceEdit grabKeyboard]
		ifTrue: [self ui definitionEdit grabKeyboard]
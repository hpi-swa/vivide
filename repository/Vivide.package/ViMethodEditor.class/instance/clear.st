memento - cleanup
clear

	super clear.
	
	self theClass ifNil: [^ self].
	
	self isValid
		ifTrue: [self artifact revertChanges]
		ifFalse: [	self setDefaultSource].
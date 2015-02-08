memento - cleanup
clear

	super clear.
	
	self theClass
		ifNotNil: [self artifact revertChanges]
		ifNil: [self setDefaultClassDefinition].
memento - cleanup
clear

	super clear.
	
	self theClass
		ifNotNil: [
			self artifact revertChanges.
			self updateToolbars]
		ifNil: [
			self setDefaultClassDefinition].
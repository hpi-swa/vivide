actions - focus
focusObject: anObject

	self inputPage owner ifNil: [^ self].
	(self inputPage artifactContainers detect: [:c | c isObject: anObject] ifNone: [])  
		ifNotNil: [:c | self inputPage passKeyboardFocusTo: c].
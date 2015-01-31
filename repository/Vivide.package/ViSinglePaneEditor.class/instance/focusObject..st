actions - focus
focusObject: anObject

	self flag: #todo. "mt: Select specific object in view in pane."
	(self pane objects identityIncludes: anObject)
		ifTrue: [self pane grabKeyboard].
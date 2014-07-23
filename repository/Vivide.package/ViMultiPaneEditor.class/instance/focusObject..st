actions - focus
focusObject: anObject

	self flag: #todo. "mt: Select specific object in view in pane."
	self panes do: [:pane | (pane objects includes: anObject)
		ifTrue: [pane grabKeyboard. ^ self]].
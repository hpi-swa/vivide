actions - focus
passKeyboardFocusDown

	| newEditor methodEditors |
	methodEditors := self artifactContainers.
	newEditor := (methodEditors at: ((methodEditors indexOf:
		(methodEditors detect: [:m | m hasAnyKeyboard]))
		+ 1 min: methodEditors size)).

	self passKeyboardFocusTo: newEditor.
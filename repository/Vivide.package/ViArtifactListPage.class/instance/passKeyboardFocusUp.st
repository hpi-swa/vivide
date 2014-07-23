actions - focus
passKeyboardFocusUp

	| newEditor methodEditors |
	methodEditors := self artifactContainers.
	newEditor := (methodEditors at: ((methodEditors indexOf:
		(methodEditors detect: [:m | m hasAnyKeyboard]))
		- 1 max: 1)).
	
	self passKeyboardFocusTo: newEditor.  
actions - focus
passKeyboardFocusLeft

	| newEditor editors |
	editors := self editors.
	newEditor := (editors at: ((editors indexOf:
		(editors detect: [:m | m hasAnyKeyboard]))
		- 1 max: 1)).
	
	self passKeyboardFocusTo: newEditor.
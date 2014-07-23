actions - focus
passKeyboardFocusRight

	| newEditor editors |
	editors := self editors.
	newEditor := (editors at: ((editors indexOf:
		(editors detect: [:m | m hasAnyKeyboard]))
		+ 1 min: editors size)).
	
	self passKeyboardFocusTo: newEditor.
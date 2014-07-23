actions - focus
passKeyboardFocusTo: anEditor
	
	anEditor grabKeyboard.
	
	self flag: #magicNumber.
	self focusChanged: (anEditor column fullBoundsInWorld outsetBy: (0@0 corner: 10@0) "resize handle").
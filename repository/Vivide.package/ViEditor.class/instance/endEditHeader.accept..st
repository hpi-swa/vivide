actions - header
endEditHeader: aLineEdit accept: aBoolean

	aBoolean ifTrue: [self headerText: aLineEdit theText].

	aLineEdit delete.
	self ui headerBtn showFull.
	
	self setHeaderFocus: self hasAnyKeyboard.
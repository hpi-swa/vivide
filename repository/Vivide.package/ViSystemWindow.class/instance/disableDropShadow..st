drop shadows
disableDropShadow: aBoolean

	aBoolean = self hasDropShadow
		ifFalse: [self redrawLater].
		
	disableDropShadow := aBoolean.
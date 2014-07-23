accessing
focusedEditor

	^ self editors detect: [:editor | editor hasAnyKeyboard] ifNone: []
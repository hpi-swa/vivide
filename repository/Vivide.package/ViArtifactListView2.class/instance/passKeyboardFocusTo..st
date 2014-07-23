actions - focus
passKeyboardFocusTo: anEditor

	anEditor grabKeyboard.
	scrollArea
		scrollToShow: anEditor bounds
		duration: 500
		thenDo: [anEditor showToolbar].
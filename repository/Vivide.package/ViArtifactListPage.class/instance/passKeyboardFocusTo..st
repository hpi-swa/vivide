actions - focus
passKeyboardFocusTo: anEditor

	anEditor grabKeyboard.
	self ui codeArea
		scrollToShow: anEditor bounds
		duration: 500
		thenDo: [anEditor showToolbar].
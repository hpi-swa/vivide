actions - focus
passKeyboardFocusTo: anEditor

	self artifactContainerColumn fullBounds.
	anEditor grabKeyboard.
	scrollArea
		scrollToShow: (anEditor bounds outsetBy: 25)
		duration: 500
		thenDo: [anEditor showToolbar].
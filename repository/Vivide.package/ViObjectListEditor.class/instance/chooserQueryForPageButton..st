actions
chooserQueryForPageButton: button

	button checked ifFalse: [^ self].
	self chooseQueryForPage: (self pageForButton: button).
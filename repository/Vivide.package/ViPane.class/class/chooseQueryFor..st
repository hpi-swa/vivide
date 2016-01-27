as yet unclassified
chooseQueryFor: someObjects

	| pane |
	someObjects asList ifEmpty: [^ self].
	
	LastHelperPane := ViPane new
		objects: (Sensor shiftPressed
			ifTrue: [someObjects asList collect: [:o | o value]]
			ifFalse: [someObjects asList]);
		queries: [ViQueryOrganizer active orderedSteps];
		yourself.
	
	pane := ViPane new
		currentQuery: #formattedQueries asScript;
		objects: LastHelperPane appropriateQueries;
		yourself.
	pane grabMouse; grabKeyboard.
	pane
		chooseObjectAt: ActiveHand cursorPoint - (5@5)
		thenNotify: LastHelperPane
		with: #openInEditorWithQuery:.

	ViLoggingService trigger: {#message -> 'Script list opened.'}.
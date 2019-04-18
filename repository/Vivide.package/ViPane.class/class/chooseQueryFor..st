as yet unclassified
chooseQueryFor: someObjects

	| pane |
	someObjects asList ifEmpty: [^ self].
	
	LastHelperPane := ViPane new
		objects: (Sensor shiftPressed
			ifTrue: [someObjects asList collect: [:o | o value]]
			ifFalse: [someObjects asList]);
		queries: [ViScriptOrganizer active orderedSteps];
		yourself.
	
	pane := ViPane new
		currentQuery: #formattedQueries asScript;
		objects: LastHelperPane appropriateQueries;
		yourself.
		
	self flag: #fishy. "mt: We need this for some pluggable morphs as views who would otherwise eat this pane immediately... *sigh*"
	pane grabMouse.
	
	pane
		chooseObjectAt: ActiveHand cursorPoint - (5@5)
		thenNotify: LastHelperPane
		with: #openInEditorWithQuery:.

	ViLoggingService trigger: {#message -> 'Script list opened.'}.
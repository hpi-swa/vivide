actions
chooseQuery

	| pane |
	pane := ViPane new
		currentQuery: #formattedQueries asScript;
		objects: self appropriateQueries;
		yourself.
	pane grabKeyboard.
	pane
		chooseObjectAt: ActiveHand cursorPoint - (10@10)
		thenNotify: self
		with: #currentQueryOrReopen:.

	ViLoggingService trigger: {#message -> 'Script list opened.'}.
actions
chooseQuery

	| pane |
	pane := ViPane new
		currentQuery: #formattedScripts asScript;
		objects: self appropriateQueries;
		yourself.
	pane
		chooseObjectAt: ActiveHand cursorPoint - (10@10)
		thenNotify: self
		with: #currentQueryOrReopen:.

	ViLoggingService trigger: {#message -> 'Script list opened.'}.
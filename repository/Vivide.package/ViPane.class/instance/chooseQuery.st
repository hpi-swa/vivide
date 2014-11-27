actions
chooseQuery

	| pane |
	pane := ViPane new
		objects: self appropriateQueries;
		currentQuery: #formattedQueries asScript;
		yourself.
	pane
		chooseObjectAt: ActiveHand cursorPoint - (10@10)
		thenNotify: self
		with: #currentQueryOrReopen:.

	ViLoggingService trigger: {#message -> 'Script list opened.'}.
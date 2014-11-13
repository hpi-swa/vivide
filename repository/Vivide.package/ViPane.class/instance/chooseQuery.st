actions
chooseQuery

	| pane |
	pane := ViPane new
		objects: self appropriateQueries;
		currentQuery: (ViQueryStep convert: #formattedQueries);
		yourself.
	pane
		chooseObjectAt: ActiveHand cursorPoint - (10@10)
		thenNotify: self
		with: #currentQueryOrReopen:. 
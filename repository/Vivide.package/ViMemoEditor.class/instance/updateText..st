initialization
updateText: aText

	text setString: aText string setRuns: aText runs.
	self informationSent: 'Memo changed.'  
accessing
queries: someQueries

	self flag: #badName. "mt: queries are not editor states."
	model editorStates: someQueries.
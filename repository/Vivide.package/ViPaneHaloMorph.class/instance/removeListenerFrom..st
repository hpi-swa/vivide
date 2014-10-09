actions
removeListenerFrom: button

	| pane |
	pane := button valueOfProperty: #paneOut.
	pane ifNil: [
		self flag: #refactor.
		pane := button valueOfProperty: #paneIn].
	pane stopListeningForSelectionsFrom: self target.
	pane stopListeningForResultsFrom: self target.
	self endInteraction.
as yet unclassified
removeProviderFrom: button

	| pane |
	pane := button valueOfProperty: #paneIn.
	self target stopListeningForSelectionsFrom: pane.
	self target stopListeningForResultsFrom: pane.
	self endInteraction.
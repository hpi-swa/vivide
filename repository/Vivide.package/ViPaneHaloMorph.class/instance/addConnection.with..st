as yet unclassified
addConnection: event with: connectHandle

	self redrawLater.
	
	newOutputPane ifNotNil: [:pane |
		event shiftPressed
			ifFalse: [pane listenForSelectionsFrom: self target]
			ifTrue: [pane listenForResultsFrom: self target].
		newOutputPane := nil].
	
	self endInteraction.
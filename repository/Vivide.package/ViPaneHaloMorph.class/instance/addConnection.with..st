actions
addConnection: event with: connectHandle

	self redrawLater.
	
	newOutputPane ifNotNil: [:pane |
		event shiftPressed
			ifFalse: [(ViSelectionConnection from: self target to: pane) attach]
			ifTrue: [(ViResultsConnection from: self target to: pane) attach].
		newOutputPane := nil].
	
	self endInteraction.
	self logDataflowChanged.
layout
acceptDroppingMorph: aTransferMorph event: evt

	| pane priorOwner |
	pane := aTransferMorph passenger.
	priorOwner := pane owner.
	
	pane topLeft: evt cursorPoint.
	self addPane: pane.
	pane layoutChanged.
	
	priorOwner ifNotNil: [:currentOwner |
		currentOwner submorphs do: [:m | m layoutChanged]].
layout
acceptDroppingMorph: aTransferMorph event: evt

	| pane |
	pane := aTransferMorph passenger.
	
	pane topLeft: evt cursorPoint.
	self addPane: pane.

	self clearDrawFlag: #dropPane.  
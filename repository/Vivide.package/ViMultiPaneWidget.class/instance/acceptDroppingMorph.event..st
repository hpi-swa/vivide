as yet unclassified
acceptDroppingMorph: aTransferMorph event: evt

	| pane |
	pane := aTransferMorph passenger.
	
	pane topLeft: evt cursorPoint.
	self addPane: pane.

	self removeProperty: #dropPane.
	self redrawLater.
dropping
acceptDroppingMorph: aTransferMorph event: evt
	"Create meta script and multi-pane widget without recreating the first pane for performance reasons."

	(aTransferMorph hasFlag: #use) ifTrue: [
		self pane objects: aTransferMorph passenger.
		self clearDrawFlag: #dropPane.
		^ self].

	self assert: (self pane view isKindOf: ViMultiPaneWidget) not.

	self wrapPaneIntoMultiPaneWidget
		acceptDroppingMorph: aTransferMorph
		event: evt.
	
	self clearDrawFlag: #dropPane.
dropping
acceptDroppingMorph: aTransferMorph event: evt
	"Create meta script and multi-pane widget without recreating the first pane for performance reasons."

	self clearDrawFlag: #dropPane.

	(aTransferMorph hasFlag: #use) ifTrue: [
		self pane
			beginUpdateChain;
			objects: aTransferMorph passenger.		
		^ self].

	self assert: (self pane view isKindOf: ViMultiPaneWidget) not.

	self wrapPaneIntoMultiPaneWidget
		acceptDroppingMorph: aTransferMorph
		event: evt.
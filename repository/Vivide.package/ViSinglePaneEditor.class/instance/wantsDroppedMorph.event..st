dropping
wantsDroppedMorph: morph event: event

	(self pane view isKindOf: ViMultiPaneWidget)
		ifTrue: [^ false].
		  
	^ (morph isKindOf: TransferMorph)
		and: [morph dragTransferType = #pane]
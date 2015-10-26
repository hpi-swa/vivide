dropping
wantsDroppedMorph: morph event: event

	((morph isKindOf: TransferMorph)
		and: [morph hasFlag: #use])
			ifTrue: [^ true].

	(self pane view isKindOf: ViMultiPaneWidget)
		ifTrue: [^ false].
		  
	^ (morph isKindOf: TransferMorph)
		and: [morph dragTransferType = #pane
			or: [morph hasFlag: #script]]
dropping
wantsDroppedMorph: morph event: event

	^ (morph isKindOf: TransferMorph)
		and: [morph dragTransferType = #pane]
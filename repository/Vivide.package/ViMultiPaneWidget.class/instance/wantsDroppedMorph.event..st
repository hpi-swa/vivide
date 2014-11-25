as yet unclassified
wantsDroppedMorph: morph event: event

	^ (morph isKindOf: TransferMorph)
		and: [morph dragTransferType = #pane]
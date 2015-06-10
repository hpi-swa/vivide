dropping
wantsDroppedMorph: morph event: event

	^ (morph isKindOf: TransferMorph)
		and: [morph dragTransferType = #pane
			or: [morph hasFlag: #script]]
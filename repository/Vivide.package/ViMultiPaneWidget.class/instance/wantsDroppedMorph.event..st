dropping
wantsDroppedMorph: morph event: event

	^ (morph isKindOf: UiTransferMorph)
		and: [morph dragTransferType = #pane or: [
			morph hasFlag: #script]]
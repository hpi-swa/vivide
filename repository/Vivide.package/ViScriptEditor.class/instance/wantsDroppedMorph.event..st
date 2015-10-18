drag/drop
wantsDroppedMorph: morph event: evt

	^ (morph isKindOf: UiTransferMorph)
		and: [morph dragTransferType = #connect]
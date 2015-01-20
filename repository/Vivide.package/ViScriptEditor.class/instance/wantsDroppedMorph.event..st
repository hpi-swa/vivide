as yet unclassified
wantsDroppedMorph: morph event: evt

	^ (morph isKindOf: UiTransferMorph)
		and: [morph dragTransferType = #connect]
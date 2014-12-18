dropping
wantsDroppedMorph: morph event: event

	(self pane view isKindOf: ViMultiPaneWidget)
		ifTrue: [^ false].
		  
	^ (morph isKindOf: UiTransferMorph)
		and: [morph dragTransferType = #pane
			or: [morph hasFlag: #script]]
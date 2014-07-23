dropping
wantsDroppedMorph: aMorph event: evt

	"Only want if no submorph wants."
	self
		morphsAt: evt position
		unlocked: true
		do: [:morph | (morph ~~ self and: [morph wantsDroppedMorph: aMorph event: evt])
			ifTrue: [^ false]].

	^ ((super wantsDroppedMorph: aMorph event: evt)
		and: [aMorph isKindOf: TransferMorph])
		and: [self acceptedDropBlock
			cull: aMorph passenger
			cull: aMorph dragTransferType
			cull: aMorph source]
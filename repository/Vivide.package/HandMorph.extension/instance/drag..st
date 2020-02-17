*vivide
drag: someObjects

	self grabMorph: ((ViTransferMorph withPassenger: someObjects from: nil)
		dragTransferType: (someObjects isList ifTrue: [#objects] ifFalse: [#object]);
		yourself)
events
popUpFor: aMorph event: event

	| hand |
	hand := event hand.
	target := aMorph.
	target hasHalo: true.
	
	self flag: #metaScript.
	target fullScript. "Update meta scripts"

	hand halo: self.
	hand world addMorphFront: self.

	target ifNotNil: [self addHandles].

	ViLoggingService trigger: {#message -> 'Halo opened.'}.
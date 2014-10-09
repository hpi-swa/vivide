events
popUpFor: aMorph event: event

	| hand |
	hand := event hand.
	target := aMorph.
	target hasHalo: true.	
	
	hand halo: self.
	hand world addMorphFront: self.
	positionOffset := event position 
				- (aMorph point: aMorph position in: owner).
	
	target ifNotNil: [self addHandles].
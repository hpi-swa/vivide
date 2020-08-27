geometry
optimalHeight

	^ (self view isNil or: [self objects isEmpty])
		ifTrue: [100 * RealEstateAgent scaleFactor]
		ifFalse: [self view optimalHeight]
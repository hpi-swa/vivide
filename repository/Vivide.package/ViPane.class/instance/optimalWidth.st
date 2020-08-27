geometry
optimalWidth

	self flag: #magicNumber.
	^ (self view isNil or: [self objects isEmpty])
		ifTrue: [200 * RealEstateAgent scaleFactor]
		ifFalse: [self view optimalWidth]
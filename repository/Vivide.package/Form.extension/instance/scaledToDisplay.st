*vivide
scaledToDisplay

	| scaleFactor |
	scaleFactor := RealEstateAgent scaleFactor.
	^ scaleFactor = 1.0
		ifTrue: [self]
		ifFalse: [self scaledToSize: self extent * scaleFactor]
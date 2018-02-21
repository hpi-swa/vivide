*vivide
scaledToDisplay

	| scaleFactor |
	scaleFactor := RealEstateAgent scaleFactor.
	
	"Scale down bigger icons."
	self extent > (16@16) ifTrue: [
		^ scaleFactor > 1.0
			ifFalse: [self scaledToSize: 16@16]
			ifTrue: [self scaledToSize: ((((16@16) * scaleFactor) roundTo: 8) min: self extent)]].
				
	"Scale up smaller icons."
	^ scaleFactor = 1.0
		ifTrue: [self]
		ifFalse: [self scaledToSize: self extent * scaleFactor]
as yet unclassified
outOfWorld: aWorld

	super outOfWorld: aWorld.
	
	aWorld firstHand halo == self
		ifTrue: [aWorld firstHand releaseHalo: self].
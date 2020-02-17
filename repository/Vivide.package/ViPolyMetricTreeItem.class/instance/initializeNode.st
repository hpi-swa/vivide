as yet unclassified
initializeNode

	self lineWeight: 1.
	scale := 1.0.

	self addMorphFront: (Morph new
		color: Color white;
		borderWidth: 1;
		extent: (100 atRandom @ 100 atRandom);
		borderColor: Color black;
		"cornerStyle: #rounded;"
		yourself).
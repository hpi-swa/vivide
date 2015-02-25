as yet unclassified
initialize

	super initialize.

	self
		cornerStyle: #rounded;
		extent: 50@50;
		borderWidth: 2;
		borderColor: Color black.

	world := PasteUpMorph newWorldForProject: nil.
	world
		extent: 1024@768;
		color: Color blue;
		viewBox: (0@0 extent: world extent).

	vivide := VivideLight new.
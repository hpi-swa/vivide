running
setUp

	super setUp.

	world := PasteUpMorph newWorldForProject: nil.
	world
		extent: 1024@768;
		color: Color blue;
		viewBox: (0@0 extent: world extent).

	vivide := VivideLight new.
	vivide openInWorld: world.

	self checkOrganizer.
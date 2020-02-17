as yet unclassified
zoomOut

	self scale: 1 / 1.2.
	self childMorphs submorphsDo: [:ea |
		ea zoomOut].
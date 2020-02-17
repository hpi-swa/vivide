as yet unclassified
zoomFit

	self scale: 1 / self scale.
	self childMorphs submorphsDo: [:ea |
		ea zoomFit].
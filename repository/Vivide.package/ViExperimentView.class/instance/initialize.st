as yet unclassified
initialize

	super initialize.
	self initializeForContainerClass: ViExperimentPlayer.

	self container
		color: Color transparent;
		vResizing: #spaceFill.

	self setupBlock: [:model :container |
		container object: model objects first].
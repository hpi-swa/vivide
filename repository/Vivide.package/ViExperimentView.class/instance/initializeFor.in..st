as yet unclassified
initializeFor: aScript in: anEnvironment

	self setProperty: #viewId toValue: self class defaultViewId.
	self initializeForContainerClass: ViExperimentPlayer.
	self container
		color: Color transparent;
		vResizing: #spaceFill.
	self setupBlock: [:model :container |
		container object: model objects first].
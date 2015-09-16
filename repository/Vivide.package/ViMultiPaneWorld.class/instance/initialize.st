as yet unclassified
initialize

	super initialize.
	self layoutPolicy: ViOverlappingLayout new.
	self addMorphBack: (PasteUpMorph new
		color: ViIcons grayWashedWallPattern;
		enableDrop: true;
		clipSubmorphs: true;
		transferMorphConverter: #openArtifactsForTransferMorph:;
		yourself).
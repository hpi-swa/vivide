as yet unclassified
forceAddArtifact: artifact ifNotFocusedAfter: anotherArtifact

	self setProperty: #isReadingModel toValue: true.
	self
		addArtifact: artifact
		ifNotFocusedAfter: anotherArtifact.
	self removeProperty: #isReadingModel.
as yet unclassified
rememberAllArtifacts

	self objects ifEmpty: [^ self].
	ViObjectHistory closedObjects addObject: self objects copy.
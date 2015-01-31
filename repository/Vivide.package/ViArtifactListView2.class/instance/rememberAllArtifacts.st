as yet unclassified
rememberAllArtifacts

	self objects ifEmpty: [^ self].
	ViProfile active closedObjects addObject: self objects copy.
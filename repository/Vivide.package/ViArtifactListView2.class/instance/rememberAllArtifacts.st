as yet unclassified
rememberAllArtifacts

	self objects ifEmpty: [^ self].
	ViProfile active ifNotNil: [:profile |
		profile closedObjects addObject: self objects copy].
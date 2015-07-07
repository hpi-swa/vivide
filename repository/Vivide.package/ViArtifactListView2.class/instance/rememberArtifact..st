as yet unclassified
rememberArtifact: anArtifactContainer

	ViProfile active ifNotNil: [:profile |
		profile closedObjects addObject: {anArtifactContainer object}].
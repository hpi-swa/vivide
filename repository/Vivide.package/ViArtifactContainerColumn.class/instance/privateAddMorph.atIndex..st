as yet unclassified
privateAddMorph: aMorph atIndex: index

	super privateAddMorph: aMorph atIndex: index.
	(aMorph isKindOf: ViArtifactContainer)
		ifTrue: [self artifactAdded: aMorph; artifactsAdded: {aMorph}].
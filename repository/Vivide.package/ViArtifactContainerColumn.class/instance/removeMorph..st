as yet unclassified
removeMorph: aMorph

	super removeMorph: aMorph.

	(aMorph isKindOf: ViArtifactContainer)
		ifTrue: [self artifactRemoved: aMorph; artifactsRemoved: {aMorph}].
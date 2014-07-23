as yet unclassified
removeAllMorphsIn: aCollection

	super removeAllMorphsIn: aCollection.
	(aCollection select: [:obj | obj isKindOf: ViArtifactContainer])
		ifNotEmpty: [:removedArtifacts | self artifactsRemoved: removedArtifacts].
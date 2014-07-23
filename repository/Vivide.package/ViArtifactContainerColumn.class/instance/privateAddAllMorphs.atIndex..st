as yet unclassified
privateAddAllMorphs: someMorphs atIndex: index
	"Notify parent containers of added artifacts."

	super privateAddAllMorphs: someMorphs atIndex: index.
	(someMorphs select: [:obj | obj isKindOf: ViArtifactContainer])
		ifNotEmpty: [:addedArtifacts | self artifactsAdded: addedArtifacts].
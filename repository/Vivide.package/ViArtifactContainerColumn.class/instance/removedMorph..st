as yet unclassified
removedMorph: aMorph

	super removedMorph: aMorph.
	self artifactContainers ifEmpty: [self lastArtifactRemoved].
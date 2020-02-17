as yet unclassified
removedMorph: aMorph

	super removedMorph: aMorph.
	
	self flag: #todo. "mt: Do we really need this signal anymore? Auto-close window maybe?"
	self artifactContainers ifEmpty: [self lastArtifactRemoved].
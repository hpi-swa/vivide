as yet unclassified
openExplorer: anObject

	| explorer |
	explorer := ViObjectEditor new
		object: anObject;
		hResizing: #spaceFill.
	
	self artifactContainerColumn
		addMorph: explorer
		after: self focusedArtifact.
		
	explorer expand.
	self passKeyboardFocusTo: explorer.
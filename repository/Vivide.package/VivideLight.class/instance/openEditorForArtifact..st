actions - open
openEditorForArtifact: anArtifactContainer

	| object |
	object := anArtifactContainer object.
	
	anArtifactContainer hasUnacceptedChanges
		ifFalse: [anArtifactContainer delete].
		
	^ ViMultiPaneEditor open: #artifacts for: {object}
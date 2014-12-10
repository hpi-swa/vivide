actions - open
openEditorForArtifact: anArtifactContainer

	| object |
	object := anArtifactContainer object.
	
	anArtifactContainer hasUnacceptedChanges
		ifFalse: [anArtifactContainer delete].
		
	^ ViSinglePaneEditor open: #artifacts for: {object}
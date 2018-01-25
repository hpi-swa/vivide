actions - open
openEditorForArtifact: anArtifactContainer

	| object |
	object := anArtifactContainer object.
	
	anArtifactContainer hasUnacceptedChanges
		ifFalse: [anArtifactContainer delete].
		
	^ self openScript: #artifacts withObjects: {object}
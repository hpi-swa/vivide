actions - open
openEditor: anEditorState

	self flag: #refactoring. "mt: Single-object states. Ugly..."
	(anEditorState properties includesKey: #object)
		ifTrue: [^ self openArtifact: (anEditorState properties at: #object)]  .
			
	^ (ViEditor newFromState: anEditorState)
		openInWindowAsIs
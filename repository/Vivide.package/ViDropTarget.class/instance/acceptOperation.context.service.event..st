dropping - specific
acceptOperation: aSymbol context: anObject service: anArtifactEditorClass event: evt

	| editor |
	anArtifactEditorClass ifNil: [^ self].
	
	editor := ViObjectListEditor new.
	editor addArtifact: (anArtifactEditorClass new
		context: anObject;
		object: nil).
	self dropEditor: editor event: evt.
	editor grabKeyboard.
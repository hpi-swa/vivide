dropping/grabbing
acceptOperation: aSymbol context: anObject service: anArtifactEditorClass event: evt

	| editor |
	editor := anArtifactEditorClass new
		context: anObject;
		object: nil.
	self dropEditor: editor event: evt.
	editor grabKeyboard.
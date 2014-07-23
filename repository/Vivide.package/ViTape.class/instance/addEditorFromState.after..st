add/remove - editors
addEditorFromState: anEditorState after: anotherEditor

	| editor |
	editor := ViEditor newFromState: anEditorState.

	anotherEditor
		ifNotNil: [self addColumnFor: editor after: anotherEditor column]
		ifNil: [self addColumnFor: editor].
	
	^ editor
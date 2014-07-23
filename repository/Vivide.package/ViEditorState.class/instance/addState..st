accessing
addState: anEditorState

	^ (self properties at: #children ifAbsentPut: [OrderedCollection new])
		add: anEditorState
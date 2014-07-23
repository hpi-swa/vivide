accessing
nodes

	^ nodes ifNil: [
		nodes := editorStates
			ifNil: [OrderedCollection new]
			ifNotNil: [:states | states collect: [:state | self wrapEditorState: state]]]
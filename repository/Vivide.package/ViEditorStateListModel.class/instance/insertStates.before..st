actions
insertStates: someStates before: aState

	| idx node |
	node := self nodeAt: aState.
	idx := self nodes indexOf: aState.
	
	someStates do: [:state |
		self nodes add: (self wrapEditorState: state) before: node.
		self editorStates add: state before: aState].
	
	self childrenInsertedFrom: idx to: idx + someStates size - 1 inGroup: self groups first.
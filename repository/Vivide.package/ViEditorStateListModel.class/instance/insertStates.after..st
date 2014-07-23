actions
insertStates: someStates after: aState

	| idx node |
	node := self nodeAt: aState.
	idx := self nodes indexOf: node.
	
	someStates reverseDo: [:state |
		self nodes add: (self wrapEditorState: state) after: node.
		self editorStates add: state after: aState].
	
	self childrenInsertedFrom: idx + 1 to: idx + someStates size inGroup: self groups first.
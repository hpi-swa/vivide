actions
removeState: aState

	| idx node |
	node := self nodeAt: aState.
	idx := self nodes indexOf: node.

	self nodes remove: node.  
	self editorStates remove: aState.

	self childRemoved: idx.
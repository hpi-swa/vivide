actions
moveState: sourceState after: targetState

	| startNode startIndex endNode endIndex |
	sourceState == targetState ifTrue: [^ self].

	startNode := self nodeAt: sourceState.
	startIndex := self nodes indexOf: startNode.

	endNode := self nodeAt: targetState.
	endIndex := self nodes indexOf: endNode.
	
	self nodes
		remove: startNode;
		add: startNode after: endNode.
	
	self editorStates
		remove: sourceState;
		add: sourceState after: targetState.
	
	self childrenChangedFrom: {startIndex.endIndex} min to: {startIndex.endIndex} max inGroup: self groups first.
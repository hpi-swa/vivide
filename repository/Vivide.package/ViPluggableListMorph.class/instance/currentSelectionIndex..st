as yet unclassified
currentSelectionIndex: anInteger

	self hasMultiSelection
		ifTrue: [^ self changed: #currentSelectionIndex].

	currentSelectionIndex := anInteger.
	
	self selectedObjects
		removeAll;
		add: (self selectedNode ifNotNil: [:node | node at: #object]).
	
	self changed: #currentSelectionIndex.
	self yield: self selectedNodes.
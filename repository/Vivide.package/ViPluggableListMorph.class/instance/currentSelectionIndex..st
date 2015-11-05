as yet unclassified
currentSelectionIndex: anInteger

	selectionMap ifNotNil: [^ self changed: #currentSelectionIndex].

	"currentSelectionIndex = anInteger ifTrue: [^ self]."
	
	currentSelectionIndex := anInteger.
	selectedObjects
		removeAll;
		addAll: (self selectedNodes collect: [:node | node at: #object]).
	
	self changed: #currentSelectionIndex.
	self yield: self selectedNodes.
as yet unclassified
setAt: index isSelected: aBoolean

	(self isSelectedAt: index) == aBoolean ifTrue: [^ self].
	self selectionMap at: index put: aBoolean.
	selectedObjects
		removeAll;
		addAll: (self selectedNodes collect: [:node | node at: #object]).
	
	self changed: #currentSelectionIndex.
	self yield: self selectedNodes.
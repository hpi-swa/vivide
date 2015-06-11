as yet unclassified
setAt: index isSelected: aBoolean

	(self isSelectedAt: index) == aBoolean ifTrue: [^ self].
	self selectionMap at: index put: aBoolean.
	
	self changed: #currentSelectionIndex.
	self selectionChanged: self selectedNodes.
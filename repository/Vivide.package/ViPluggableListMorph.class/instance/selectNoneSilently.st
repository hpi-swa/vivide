as yet unclassified
selectNoneSilently

	self hasMultiSelection
		ifTrue: [self selectionMap atAllPut: false].
	
	currentSelectionIndex := 0.
	self selectedObjects removeAll.
	
	self changed: #currentSelectionIndex.
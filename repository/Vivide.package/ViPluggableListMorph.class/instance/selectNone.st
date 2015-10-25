as yet unclassified
selectNone

	selectionMap ifNotNil: [selectionMap := Array new].
	currentSelectionIndex := 0.
	
	self changed: #currentSelectionIndex.
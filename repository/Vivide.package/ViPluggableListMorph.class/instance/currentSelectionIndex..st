as yet unclassified
currentSelectionIndex: anInteger

	currentSelectionIndex = anInteger ifTrue: [^ self].
	
	currentSelectionIndex := anInteger.
	
	self changed: #currentSelectionIndex.
	self selectionChanged: (self selectedNode ifNil: [{}] ifNotNil: [:node | {node}]).
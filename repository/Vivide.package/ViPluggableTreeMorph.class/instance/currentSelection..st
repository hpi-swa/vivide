as yet unclassified
currentSelection: node

	currentSelection = node ifTrue: [^ self].
	currentSelection := node.
	
	self changed: #currentSelection.
	self yield: (node ifNil: [#()] ifNotNil: [{node}])
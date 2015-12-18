as yet unclassified
process: node

	| oldSelection selectedIndices nodes |
	oldSelection := self selectedObjects copy.

	model := node.
	self reset.

	selectedIndices := OrderedCollection new.
	nodes := model nodes.
	oldSelection do: [:selectedObject | | i |
		i := 0.
		nodes
			detect: [:n | i := i + 1. (n at: #object) = selectedObject]
			ifFound: [:n | selectedIndices add: i]
			ifNone: []].
	
	"Restore selection."
	selectedIndices do: [:i |
		currentSelectionIndex := i.
		self hasMultiSelection ifTrue: [self selectionMap at: i put: true]].
	self changed: #currentSelectionIndex.
	self selectedObjects addAll: (self selectedNodes collect: [:n | n at: #object]).
	
	"If the selection changed, tell the environment about it."
	(oldSelection size > self selectedObjects size)
		ifTrue: [self yield: self selectedNodes].
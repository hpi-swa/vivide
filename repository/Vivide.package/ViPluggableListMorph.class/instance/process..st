as yet unclassified
process: node

	| oldSelection |
	oldSelection := self selectedObjects copy.

	model := node.
	self reset.

	oldSelection do: [:selectedObject | | i |
		i := 0.
		model nodes
			detect: [:n | i := i + 1. (n at: #object) = selectedObject]
			ifFound: [:n | self currentSelectionIndex: i]
			ifNone: []].
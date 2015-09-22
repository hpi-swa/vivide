as yet unclassified
deselectItem: item

	self selectedItems remove: item ifAbsent: [].
	item itemMorph borderWidth: 1; borderColor: Color black.

	self yieldAllObjects: self selectedObjects.
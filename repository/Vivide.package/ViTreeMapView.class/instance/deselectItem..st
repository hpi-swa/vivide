as yet unclassified
deselectItem: item

	self selectedItems remove: item ifAbsent: [].
	item selected: false.

	self yieldAllObjects: self selectedObjects.
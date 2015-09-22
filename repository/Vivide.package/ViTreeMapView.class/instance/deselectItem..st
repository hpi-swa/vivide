as yet unclassified
deselectItem: item

	self selectedItems remove: item ifAbsent: [].
	item color: (item valueOfProperty: #backgroundColor).
	item removeProperty: #backgroundColor.

	self yieldAllObjects: self selectedObjects.
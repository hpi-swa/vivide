as yet unclassified
deselectItem: item

	self selectedItems remove: item ifAbsent: [].
	item itemMorph
		borderWidth: 1;
		borderColor: Color black;
		color: (item itemMorph valueOfProperty: #originalColor).

	self yieldAllObjects: self selectedObjects.
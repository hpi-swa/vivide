as yet unclassified
deselectAll

	self selectedItems do: [:item | 
		item color: (item valueOfProperty: #backgroundColor).
		item removeProperty: #backgroundColor].
	self selectedItems removeAll.
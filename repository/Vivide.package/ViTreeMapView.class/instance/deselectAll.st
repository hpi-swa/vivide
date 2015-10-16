as yet unclassified
deselectAll

	self selectedItems do: [:item | item selected: false].
	self selectedItems removeAll.
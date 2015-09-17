as yet unclassified
deselectAll

	self selectedItems do: [:item | item itemMorph borderWidth: 1; borderColor: Color black].
	self selectedItems removeAll.
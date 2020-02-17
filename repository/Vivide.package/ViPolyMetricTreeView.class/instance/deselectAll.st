as yet unclassified
deselectAll

	self selectedItems do: [:item | item itemMorph
			borderWidth: 1;
			borderColor: Color black;
			color:  (item itemMorph valueOfProperty: #originalColor)].
	self selectedItems removeAll.
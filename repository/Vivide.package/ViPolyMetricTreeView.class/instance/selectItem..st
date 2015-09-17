as yet unclassified
selectItem: item

	self selectedItems add: item.
	item itemMorph borderWidth: 2; borderColor: Color blue paler.
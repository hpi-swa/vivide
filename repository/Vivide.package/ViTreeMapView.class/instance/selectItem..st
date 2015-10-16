as yet unclassified
selectItem: item

	self selectItemSilently: item.
	self yieldAllObjects: self selectedObjects.
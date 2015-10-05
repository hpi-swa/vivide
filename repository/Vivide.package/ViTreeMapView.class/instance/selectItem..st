as yet unclassified
selectItem: item

	self selectedItems add: item.
	item setProperty: #backgroundColor toValue: item color. 
	item color: (Color fromString: '#5F39A7').

	self yieldAllObjects: self selectedObjects.
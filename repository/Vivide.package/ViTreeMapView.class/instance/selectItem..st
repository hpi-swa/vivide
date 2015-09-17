as yet unclassified
selectItem: item

	self selectedItems add: item.
	item setProperty: #backgroundColor toValue: item color. 
	item color: Color blue paler.
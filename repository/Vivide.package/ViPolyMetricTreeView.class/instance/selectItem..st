as yet unclassified
selectItem: item

	| selectionColor |
	selectionColor := Color h: 360-142 s: 180/255 v: 230/255.
	
	self selectedItems add: item.
	item itemMorph
		borderWidth: 2;
		borderColor: selectionColor;
		color: ((item itemMorph valueOfProperty: #originalColor) mixed: 0.5 with: selectionColor).

	self yieldAllObjects: self selectedObjects.
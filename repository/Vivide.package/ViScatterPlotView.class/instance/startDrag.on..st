as yet unclassified
startDrag: evt on: morph

	morph setProperty: #dragStart toValue: evt position.
	
	self deselectAllItemsOn: morph.
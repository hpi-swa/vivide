graph
startDrag: evt on: morph

	evt redButtonChanged ifFalse: [^ self].

	morph setProperty: #dragStart toValue: evt position.
	
	self deselectAllItemsOn: morph.
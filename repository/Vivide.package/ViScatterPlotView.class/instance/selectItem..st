items
selectItem: morph

	morph comeToFront.

	self selectItemSilently: morph.
	self highlightItem: morph.
	
	self yieldSelectionOn: graph.

	self changed. "draw cross"
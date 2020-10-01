as yet unclassified
deselectItem: morph

	self deselectItemSilently: morph.
	self unhighlightItem: morph.
	
	self yieldSelectionOn: graph.

	self changed. "draw cross"
as yet unclassified
endDrag: evt on: morph

	morph removeProperty: #dragStart.
	self changed. "draw selection rect"
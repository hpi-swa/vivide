as yet unclassified
initialize

	super initialize.
	self
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #bottomCenter.

	self addMorphFront: (Morph new width: 1; color: Color blue; vResizing: #spaceFill; disableTableLayout: true).

	self initializeGraph.

	self on: #mouseMove send: #updateHighlight: to: self.
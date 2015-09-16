as yet unclassified
initializeChildren

	self addMorphBack: (Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #topCenter;
		cellInset: 0;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		extent: 1@1;
		yourself).
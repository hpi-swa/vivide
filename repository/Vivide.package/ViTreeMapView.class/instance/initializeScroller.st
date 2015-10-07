as yet unclassified
initializeScroller
	
	self
		addMorphBack: (UiScrollArea new
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			widget: (ViTreeMapItemMorph new
				cornerStyle: #root;
				color: Color transparent;
				borderWidth: 0;
				layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1))
				yourself);
			yourself).
	self scroller transformMorph color: Color transparent.
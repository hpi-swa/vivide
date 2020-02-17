initialization
initializeScroller

	self
		addMorphBack: (UiScrollArea new
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			widget: (Morph new
				name: #content;
				color: (Color gray: 0.85);
				borderWidth: 0;
				layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1))
				yourself);
			yourself).
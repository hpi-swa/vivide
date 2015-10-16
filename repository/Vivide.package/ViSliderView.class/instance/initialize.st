as yet unclassified
initialize

	super initialize.
	
	self
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight.

	self
		addMorphBack: (UiSlider new orientation: #vertical; vResizing: #spaceFill; minimum: 1; maximum: 1; tracking: true"; layoutInset: (0@5 corner: 0@5)");
		addMorphBack: (Morph new color: Color transparent; changeTableLayout; listDirection: #topToBottom; vResizing: #spaceFill; hResizing: #spaceFill; cellPositioning: #leftCenter; yourself).
	
	self connect: self slider signal: #valueChanged: toSelector: #selectObject:.
private
maskedFormFor: aForm

	| result canvas |
	result := Form extent: aForm extent depth: 32.
	canvas := result getCanvas.
	
	canvas
		fillColor: (Color gray: 0.85);
		frameRectangle: (0@0 corner: aForm extent) color: Color black.
		
	^ result
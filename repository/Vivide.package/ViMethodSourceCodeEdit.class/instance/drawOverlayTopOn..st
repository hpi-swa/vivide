drawing
drawOverlayTopOn: aCanvas

	| gradient font overlay |
	font := self textMorph textStyle fontOfPointSize: 10. 
	overlay := self overlayText asMorph.
	overlay font: font.
	overlay
		topLeft: self topLeft + self margins topLeft;
		wrapFlag: true;
		width: self width - (self verticalScrollBar width * 2) ;
		autoFit: true.
			
	aCanvas
		fillRectangle: (self topLeft corner: overlay bounds bottomRight)
		color: self color.

	gradient := (GradientFillStyle ramp: {
		0.0 -> self color.
		0.3 -> (self color alpha: 0.5).
		1.0 -> (self color alpha: 0.1)})
			origin: overlay bounds bottomLeft;
			direction: 0@30.

	aCanvas
		fillRectangle: (overlay bounds bottomLeft corner: (overlay bounds bottomRight + (0@30)))
		fillStyle: gradient.
				
	overlay fullDrawOn: aCanvas.
drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	self
		drawBackgroundOn: aCanvas;
		drawInnerShadowOn: aCanvas;
		drawSeparatorsOn: aCanvas;
		drawFooterOn: aCanvas.
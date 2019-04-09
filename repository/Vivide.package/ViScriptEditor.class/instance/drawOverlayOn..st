drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.

	self
		drawDropHighlightOn: aCanvas;
		drawWizardIndicationOn: aCanvas;
		drawScriptEffectsOn: aCanvas.
drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.

	self
		drawMapOn: aCanvas;
		drawDropHighlightOn: aCanvas;
		drawWizardIndicationOn: aCanvas;
		drawScriptEffectsOn: aCanvas.
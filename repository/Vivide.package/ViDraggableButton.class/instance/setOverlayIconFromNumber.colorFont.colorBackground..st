as yet unclassified
setOverlayIconFromNumber: anInteger colorFont: colorFont colorBackground: colorBackground

	| canvas font labelExtent |
	font := Preferences standardButtonFont.
	labelExtent := (font widthOfString: anInteger asString) @ font height.
	
	overlayIcon := Form extent: labelExtent depth: 32.
	canvas := overlayIcon getCanvas.
	
	canvas
		fillRoundRect: (0@0 corner: overlayIcon extent)
		radius: 3
		fillStyle: (SolidFillStyle color: colorBackground).
		
	canvas
		drawString: anInteger asString
		at: (overlayIcon extent - labelExtent // 2) + (1@1)
		font: font
		color: colorFont.
		
	self redrawLater.
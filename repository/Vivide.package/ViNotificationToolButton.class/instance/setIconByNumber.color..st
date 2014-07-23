accessing
setIconByNumber: anInteger color: aColor

	| canvas font labelExtent |
	font := StrikeFont familyName: 'Bitmap Envy Code R' pointSize: 8 emphasized: 1.
	labelExtent := (font widthOfString: anInteger asString) @ font height.
	
	notificationIcon := Form extent: labelExtent - (0@4) depth: 32.
	canvas := notificationIcon getCanvas.
	
	UiPlatform current
		canvas: canvas
		fillRoundRect: (0@0 corner: notificationIcon extent)
		radius: 3
		fillStyle: (SolidFillStyle color: aColor).
	
	
		
	canvas
		drawString: anInteger asString
		at: (notificationIcon extent - labelExtent // 2) + (1@1)
		font: font
		color: Color white.
		
	self redrawLater.
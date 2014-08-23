drawing
drawOverlayOn: aCanvas

	self hasDropShadow ifFalse: [^ self].
	
	UiPlatform current
		canvas: aCanvas
		frameRoundRect: (self bounds outsetBy: (1@1 corner: 0@1))
		radius: 3
		width: 1
		color: (Color gray: 0.6). 
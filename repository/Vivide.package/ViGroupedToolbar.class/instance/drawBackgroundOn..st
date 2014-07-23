drawing
drawBackgroundOn: aCanvas

	| groupBounds |
	groupBounds := primaryList bounds outsetBy: 3.  
	
	UiPlatform current
		canvas: aCanvas
		frameAndFillRoundRect: groupBounds
		radius: 3
		fillStyle: (SolidFillStyle color: (Color gray: 0.85))
		borderWidth: 1
		borderColor: (Color gray: 0.5)  .
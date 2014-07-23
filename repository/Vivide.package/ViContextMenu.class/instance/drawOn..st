drawing
drawOn: aCanvas

	UiPlatform current
		canvas: aCanvas
		frameAndFillRoundRect: (self bounds insetBy: self layoutInset - 3)
		radius: 3
		fillStyle: (SolidFillStyle color: (Color gray: 0.85))
		borderWidth: 1
		borderColor: (Color gray: 0.5).
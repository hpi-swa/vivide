as yet unclassified
drawBackgroundOn: aCanvas
	"Elevation"
	self elevation > 0 ifTrue: [
		aCanvas
			frameAndFillRoundRect: self bounds
			radius: self preferredCornerRadius
			fillStyle: (self fillStyle asColor adjustBrightness: -0.15)
			borderWidth: self borderStyle width
			borderColor: self borderStyle color].

	"Filler"
	self elevation > (self height - self preferredCornerRadius) ifTrue: [
		| r |
		r := ((self left)
					@ (self top - self elevation + (self preferredCornerRadius min: self height // 2))
				corner: (self right)
					@ (self bottom - (self preferredCornerRadius min: self height // 2))).
		aCanvas
			fillRectangle: (r insetBy: self borderStyle width)
			color: (self color adjustBrightness: -0.15).
		aCanvas
			line: r topLeft + (1@0)
			to: r bottomLeft + (1@0)
			width: self borderStyle width
			color: self borderStyle color.
		aCanvas
			line: r topRight - (1@0)
			to: r bottomRight - (1@0)
			width: self borderStyle width
			color: self borderStyle color.	
		].

	"Top."
	aCanvas
		frameAndFillRoundRect: (self bounds translateBy: (0@ self elevation negated))
		radius: self preferredCornerRadius
		fillStyle: self fillStyle
		borderWidth: self borderStyle width
		borderColor: self borderStyle color.
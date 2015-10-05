as yet unclassified
drawLabelOn: aCanvas color: labelColor

	| pos w |
	self label ifEmpty: [^ self].
	
	w := self font widthOfString: self label.
	((w//2) > self width or: [self font height > self height])
		ifTrue: [^ self].
	
	pos := self center - ((w @ self font height) // 2).
	
	self labelPosition = #topLeft ifTrue: [
		pos := self topLeft + (self class preferredCornerRadius // 2) asPoint].
	
	aCanvas
		clipBy: self outerBounds
		during: [:c |
			c
				drawString: self label
				at: pos - (0 @ self elevation)
				font: self font
				color: labelColor].
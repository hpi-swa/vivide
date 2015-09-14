as yet unclassified
drawOverlayOn: aCanvas

	| pos w |
	self label ifEmpty: [^ self].
	
	w := self font widthOfString: self label.
	((w//2) > self width or: [self font height > self height])
		ifTrue: [^ self].
	
	pos := self center - ((w @ self font height) // 2).
	
	self labelPosition = #topLeft ifTrue: [
		pos := self topLeft + (self class preferredCornerRadius // 2) asPoint].
	
	aCanvas
		clipBy: self bounds
		during: [:c |
			c
				drawString: self label
				at: pos
				font: self font
				color: Color black].
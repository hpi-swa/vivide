as yet unclassified
drawOverlayOn: aCanvas

	| pos |
	self label ifEmpty: [^ self].
	
	pos := self center - (((self font widthOfString: self label) @ self font height) // 2).
	
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
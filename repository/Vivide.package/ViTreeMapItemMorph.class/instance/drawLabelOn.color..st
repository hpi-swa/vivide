as yet unclassified
drawLabelOn: aCanvas color: labelColor

	| pos w fontToUse  |
	self label ifEmpty: [^ self].
	
	fontToUse := self fontToUse.	

	w := fontToUse widthOfString: self label.
	((w//2) > self width or: [fontToUse height > self height])
		ifTrue: [^ self].
	
	pos := self center - ((w @ fontToUse height) // 2).
	
	self labelPosition = #topLeft ifTrue: [
		pos := self topLeft + (self class preferredCornerRadius // 2) asPoint].
	
	aCanvas
		clipBy: self outerBounds
		during: [:c |
			c
				drawString: self label
				at: pos - (0 @ self elevation)
				font: fontToUse
				color: labelColor].
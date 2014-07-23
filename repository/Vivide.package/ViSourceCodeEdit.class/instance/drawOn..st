drawing
drawOn: aCanvas

	| c |
	super drawOn: aCanvas.
	
	self hasKeyboard ifTrue: [c := self colorFocusBorder].
	
	c ifNotNil: [
			
		aCanvas
			line: self topLeft + (0@1) to: self topRight + (-1@1) color: (c alpha: 0.5);
			line: self topLeft + (0@2) to: self topRight + (-1@2) color: (c alpha: 0.2).
			
		aCanvas
			line: self topLeft + (1@1) to: self bottomLeft + (1@ -1) color: (c alpha: 0.5);
			line: self topLeft + (2@2) to: self bottomLeft + (2@ -1) color: (c alpha: 0.2).
		
		aCanvas
			frameRectangle: self innerBounds
			color: (c alpha: 0.8)].
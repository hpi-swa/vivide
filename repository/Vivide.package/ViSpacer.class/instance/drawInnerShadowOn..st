drawing
drawInnerShadowOn: aCanvas

	| c |
	c := Color black.

	aCanvas
		line: self topLeft + (0@1) to: self topRight + (-1@1) color: (c alpha: 0.5);
		line: self topLeft + (0@2) to: self topRight + (-1@2) color: (c alpha: 0.2).
	
	aCanvas
		line: self topLeft + (2@1) to: self bottomLeft + (2@ -1) color: (c alpha: 0.5);
		line: self topLeft + (3@2) to: self bottomLeft + (3@ -1) color: (c alpha: 0.2).
		
	aCanvas
		frameRectangle: (self innerBounds insetBy: (1@0 corner: 1@0))
		color: (c alpha: 0.8).
drawing
drawOn: aCanvas

	super drawOn: aCanvas.  
		
	"Overlap to line edit."
	aCanvas
		fillRectangle: (self bottomLeft + (1@ -2) corner: self bottomLeft + (self overlappingWidth @ 0))
		color: Color white.

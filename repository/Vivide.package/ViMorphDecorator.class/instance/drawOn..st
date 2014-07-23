drawing
drawOn: aCanvas

	"Shadow of selected group."
	aCanvas
		frameRectangle: (self bounds insetBy: (2@2 corner: 0 @ 0))  
		width: 1
		color: (Color gray: 0.5).

	"Frame for selected group."
	aCanvas
		frameRectangle: (self bounds insetBy: (0@0 corner: 1@1))
		width: 1
		color: (Color gray: 0.75).
		
	"Background of selected group."
	aCanvas
		fillRectangle: (self bounds insetBy: (1@1 corner: 2@2))
		color: Color white.
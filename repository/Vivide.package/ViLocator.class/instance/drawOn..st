drawing
drawOn: aCanvas

	(self hasKeyboard not and: [resultListDecorator owner isNil])
		ifTrue: [^ super drawOn: aCanvas].

	"Shadow of selected group."
	aCanvas
		frameRectangle: (self outerBounds insetBy: (3@2 corner: 0@0))  
		width: 1
		color: (Color gray: 0.5).

	"Frame for selected group."
	aCanvas
		frameRectangle: (self outerBounds insetBy: (1@0 corner: 1@1))
		width: 1
		color: (Color gray: 0.75).
		
	"Background of selected group."
	aCanvas
		fillRectangle: (self outerBounds insetBy: (2@1 corner: 2@2))
		color: Color white.

	self drawHelpTextOn: aCanvas.  
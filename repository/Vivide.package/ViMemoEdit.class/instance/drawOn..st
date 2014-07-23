as yet unclassified
drawOn: aCanvas

	| b |
	b := self bounds insetBy: (8@3 corner: 10@3).

	"Draw paper-like background."
	aCanvas
		frameRectangle: b
		color: (Color gray: 0.7).
	
	UiPlatform current
		canvas: aCanvas
		frameAndFillRoundRect: (b outsetBy: 2)
		radius: 3
		fillStyle: (SolidFillStyle color: (Color gray: 0.87))
		borderWidth: 1 borderColor: (Color gray: 0.95).
		

	aCanvas
		fillRectangle: b
		color: (Color gray: 0.95).
	
	aCanvas
		frameRectangle: b
		color: (Color gray: 0.7).
		
	self hasUnacceptedChanges ifTrue: [
		aCanvas
			line: b topLeft + (4@5)
			to: b bottomLeft +(4 @ -5)
			color: (Color lightRed)]
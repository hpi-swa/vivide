as yet unclassified
drawOn: aCanvas

	| b o c |	
	o := self margins origin.
	c  := self margins corner.
	b := self bounds insetBy: ((o / 2) rounded corner: (c / 2) rounded).
	
	"Draw fancy shadow."
	aCanvas
		frameAndFillRoundRect: (b outsetBy: 2)
		radius: 3
		fillStyle: (SolidFillStyle color: self color darker)
		borderWidth: 1 borderColor: self color.

	aCanvas
		fillRectangle: b
		color: self color.
	
	aCanvas
		frameRectangle: b
		width: self borderWidth
		color: self borderColor.
		
	self hasUnacceptedChanges ifTrue: [
		aCanvas
			line: b topLeft + (4@5)
			to: b bottomLeft +(4 @ -5)
			color: (Color lightRed)]
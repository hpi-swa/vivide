drawing
drawHelpTextOn: aCanvas

	| font |
	(self helpText isEmpty or: [self textMorph contents notEmpty])
		ifTrue: [^ self].
	
	font := self textMorph textStyle defaultFont.

	aCanvas
		drawString: self helpText 
		in: (self bounds translateBy: 5 @ (self bounds height - font height // 2))
		font: font
		color: (Color gray: 0.7).
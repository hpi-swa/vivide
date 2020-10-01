as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	
	orientation == #vertical
		ifTrue: [self drawVerticallyOn: aCanvas]
		ifFalse: [self drawHorizontallyOn: aCanvas].
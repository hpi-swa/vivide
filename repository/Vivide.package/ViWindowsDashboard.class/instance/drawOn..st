as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	aCanvas
		drawString: 'Hit [escape] to close.'
		at: 10@10
		font: Preferences standardDefaultTextFont
		color: Color white.
as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	self submorphs ifEmpty: [
		aCanvas
			drawString: 'Button bar: Objects missing.'
			at: self topLeft
			font: Preferences standardButtonFont
			color: (Color gray: 0.3) ]
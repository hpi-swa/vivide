as yet unclassified
drawOn: aCanvas

	super drawOn: aCanvas.
	self submorphs ifEmpty: [
		| r |
		r := self bounds insetBy: 5.
		
		{r topLeft. r topRight. r topRight. r bottomRight. r topLeft. r bottomLeft. r bottomLeft. r bottomRight}
			pairsDo: [:pt1 :pt2 |
				aCanvas
					line: pt1 to: pt2 width: 1
					color: (Color gray: 0.4) dashLength: 6
					secondColor: Color transparent secondDashLength: 4
					startingOffset: 0].		
		aCanvas
			drawString: 'Button bar needs objects.'
			at: r topLeft + (5@5)
			font: Preferences standardButtonFont
			color: (Color gray: 0.3) ]
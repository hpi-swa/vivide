as yet unclassified
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.

	(self hasProperty: #dropPane) ifTrue: [
		aCanvas
			frameAndFillRectangle: self bounds
			fillColor: ((Color fromString: #'952424') alpha: 0.3)
			borderWidth: 2
			borderColor: (Color fromString: #'952424')].
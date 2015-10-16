as yet unclassified
drawOverlayOn: aCanvas

	(self submorphs anySatisfy: [:s | s elevation > 0]) ifTrue: [
		self drawLabelOn: aCanvas color: (Color black alpha: 0.4) ].

	self drawSelectionOn: aCanvas.
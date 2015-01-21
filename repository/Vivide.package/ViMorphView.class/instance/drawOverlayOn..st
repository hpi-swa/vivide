as yet unclassified
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	self model ifNotNil: [:m |
		(m nodes
			collect: [:node | node at: #item ifAbsent: [nil]]
			thenSelect: [:obj | obj notNil])
			do: [:morph | 
				aCanvas
					fillRectangle: morph bounds
					color: (Color red alpha: 0.5)]]
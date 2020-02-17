as yet unclassified
drawOn: canvas

	super drawOn: canvas.

	model ifNil: [^ self].

	canvas
		clipBy: self boundsInWorld
		during: [:c |
			model nodes doWithIndex: [:node :index |
				| pt |
				pt := (index-1 \\ (self width // tileSize x) @ (index-1 // (self width // tileSize x))) * tileSize + self topLeft.
				c
					fillRectangle: (pt extent: tileSize)  
					color: ((node at: #color ifAbsent: []) ifNil: [Color transparent]) ]].
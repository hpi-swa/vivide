as yet unclassified
drawOverlayInHaloOn: aCanvas

	(self owner isKindOf: ViMultiPaneWidget) ifTrue: [
		aCanvas
			fillRectangle: (self topLeft extent: 10@10)
			color: (Color white alpha: 0.5) 
		]
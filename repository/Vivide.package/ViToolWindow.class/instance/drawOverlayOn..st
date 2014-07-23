drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	
	darkenValue ifNotNil: [
		aCanvas
			fillRectangle: self bounds
			color: (self world color in: [:c |
				self flag: #fixme. "mt: #dominantColor does not work as expected for our infinite forms!"
				((c isKindOf: InfiniteForm)
					ifTrue: [(Color gray: 76/255)]
					ifFalse: [c]) alpha: darkenValue
				])].
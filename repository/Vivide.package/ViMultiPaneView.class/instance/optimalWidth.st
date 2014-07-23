as yet unclassified
optimalWidth

	^ self panes
		inject: 0
		into: [:sum :pane | sum + pane optimalWidth]
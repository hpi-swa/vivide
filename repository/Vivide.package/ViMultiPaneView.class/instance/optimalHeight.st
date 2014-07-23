as yet unclassified
optimalHeight

	^ self panes
		inject: 0
		into: [:max :pane | max max: (pane optimalHeight min: 500)]
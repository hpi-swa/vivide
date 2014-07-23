geometry
optimalWidth

	^ self inputPane
		ifNil: [0]
		ifNotNil: [:pane | pane optimalWidth]
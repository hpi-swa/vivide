geometry
optimalHeight

	^ self inputPane
		ifNil: [400]
		ifNotNil: [:pane | pane optimalHeight]
dynamic lookup
doesNotUnderstand: aMessage

	aMessage numArgs = 0 ifTrue: [
		^ self pane
			decorationNamed: aMessage selector
			ifAbsent: [ViPaneDecorationGhost default]].
	^ super doesNotUnderstand: aMessage
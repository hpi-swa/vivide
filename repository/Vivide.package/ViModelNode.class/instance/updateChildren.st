reset
updateChildren

	| workBlock |
	children ifNil: [
		"The view did never request the children yet."
		^ self].
	
	workBlock := [self resetChildren].

	self pane
		ifNil: [workBlock value]
		ifNotNil: [:p | p beginUpdateChainWith: workBlock].
accessing
nodeAt: aState

	^ self nodes
		detect: [:n | (n at: #state) = aState]
		ifNone: []
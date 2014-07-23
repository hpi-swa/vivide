events
hasKeyboard

	^ self view
		ifNil: [false]
		ifNotNil: [:morph | morph hasKeyboard]
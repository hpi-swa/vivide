geometry
optimalHeight

	^ self view
		ifNil: [300]
		ifNotNil: [:view | view optimalHeight]
geometry
optimalHeight

	self flag: #refactor. "Assumes interface of view."
	^ self view
		ifNil: [300]
		ifNotNil: [:view | view optimalHeight]
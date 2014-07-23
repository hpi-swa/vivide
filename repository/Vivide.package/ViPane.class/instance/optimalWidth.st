geometry
optimalWidth

	self flag: #refactor. "Assumes interface of view."
	^ self view
		ifNil: [150]
		ifNotNil: [:view | view optimalWidth + 5]
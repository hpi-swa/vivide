geometry
optimalWidth

	self flag: #magicNumber.
	^ self view
		ifNil: [150]
		ifNotNil: [:view | view optimalWidth + 5]
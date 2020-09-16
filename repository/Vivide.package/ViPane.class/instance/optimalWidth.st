geometry
optimalWidth

	self flag: #magicNumber.
	^ self view
		ifNil: [200 scaleValueToDisplay]
		ifNotNil: [:v |
			self view optimalWidth max: (self objects ifEmpty: [200 scaleValueToDisplay] ifNotEmpty: [0])]
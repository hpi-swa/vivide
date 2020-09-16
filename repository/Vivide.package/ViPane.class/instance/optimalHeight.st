geometry
optimalHeight

	self flag: #magicNumber.
	^ self view
		ifNil: [100 scaleValueToDisplay]
		ifNotNil: [:v |
			v optimalHeight max: (self objects ifEmpty: [100 scaleValueToDisplay] ifNotEmpty: [0])]
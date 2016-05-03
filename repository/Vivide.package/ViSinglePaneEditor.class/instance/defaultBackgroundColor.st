drawing
defaultBackgroundColor

	^ VivideLight active
		ifNil: [super defaultBackgroundColor]
		ifNotNil: [:vivide | vivide defaultBackgroundColor]
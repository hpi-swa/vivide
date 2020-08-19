accessing
outerBorderColor

	^ self valueOfProperty: #outerBorderColor ifAbsent: [self borderColor]
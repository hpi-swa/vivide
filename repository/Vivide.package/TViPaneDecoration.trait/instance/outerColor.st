accessing
outerColor
	"Answer the color that is used to fill the #layoutOutset."
	
	^ self valueOfProperty: #outerColor ifAbsent: [self color]
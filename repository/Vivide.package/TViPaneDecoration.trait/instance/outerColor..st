accessing
outerColor: aColor
	"Change the color that is used to fill the #layoutOutset."

	self setProperty: #outerColor toValue: aColor.
	self changed.
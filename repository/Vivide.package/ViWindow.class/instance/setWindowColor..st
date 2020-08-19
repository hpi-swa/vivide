as yet unclassified
setWindowColor: aColor

	self outerColor: aColor.
	self outerBorderColor: (aColor adjustBrightness: -0.3).
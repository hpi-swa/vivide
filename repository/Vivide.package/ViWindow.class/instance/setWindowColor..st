as yet unclassified
setWindowColor: aColor

	self removeProperty: #focusedColor.
	self outerColor: aColor.
	self outerBorderColor: (aColor adjustBrightness: -0.3).
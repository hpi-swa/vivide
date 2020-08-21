as yet unclassified
updateColor
	
	| colorToUse |
	self script ifNil: [^ self].
	
	colorToUse := (self script valueOfProperty: #color ifAbsent: [Color veryVeryLightGray]) value. "support blocks"

	self color: colorToUse.
	self decoration window setWindowColor: colorToUse.
	
	"Hide window decoration if transparent."
	self decoration window visible: colorToUse isTransparent not.
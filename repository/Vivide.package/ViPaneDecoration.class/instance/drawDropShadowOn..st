as yet unclassified
drawDropShadowOn: aCanvas
	"Rectangular shadow with support for rounded corners."
	
	aCanvas
		translateBy: self outerLayoutBounds topLeft - self topLeft
		during: [:c | super drawDropShadowOn: c].
as yet unclassified
textAttributesByPixelHeight
	"A cache for text attributes used by all instances of text styler."
	^ cache ifNil: [ cache := Dictionary new ]
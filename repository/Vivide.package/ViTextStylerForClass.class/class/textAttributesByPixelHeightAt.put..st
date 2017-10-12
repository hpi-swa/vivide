as yet unclassified
textAttributesByPixelHeightAt: aNumber put: someTextAttributes
	"Thread-safety first."
	
	cache := self textAttributesByPixelHeight copy
		at: aNumber put: someTextAttributes;
		yourself.
	^ someTextAttributes
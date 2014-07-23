as yet unclassified
currentFont
	"Returns the size at the text cursor."
	
	| fontChange |
	fontChange := ((self theText attributesAt: self cursorPosition)
		detect: [:attr | attr isKindOf: TextFontChange]
		ifNone: [^ self textMorph textStyle defaultFont]).
		
	^ (fontChange isKindOf: TextFontReference)
		ifTrue: [fontChange font]
		ifFalse: [self textMorph textStyle fontAt: fontChange fontNumber]
accessing
currentFont
	"Returns the size at the text cursor."
	
	| fontChange |
	fontChange := ((self artifact theText attributesAt: self artifact cursorPosition)
		detect: [:attr | attr isKindOf: TextFontChange]
		ifNone: [^ self artifact textMorph textStyle defaultFont]).
		
	^ (fontChange isKindOf: TextFontReference)
		ifTrue: [fontChange font]
		ifFalse: [self artifact textMorph textStyle fontAt: fontChange fontNumber]
		
	
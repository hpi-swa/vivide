accessing
text: stringOrText

	self text = stringOrText ifTrue: [^ self].
	text := stringOrText asText asMorph.
	self redrawLater.
accessing
text: aText

	aText = self text ifTrue: [^ self].
	text := aText asMorph.
	self redrawLater.
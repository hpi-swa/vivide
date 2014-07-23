drawing
drawMessageOn: aCanvas

	| textMorph |
	self text ifNil: [^ self].
	
	"Only show a message if no real content is there."
	(self firstSubmorph ifNotNil: [:m | m submorphs size > 1])
		ifTrue: [^ self].
		
	textMorph := self text asMorph.
	textMorph topLeft: self topLeft + (self extent - textMorph extent // 2) + (self icon width + 5 @ 0).
	
	textMorph fullDrawOn: aCanvas.
	
	aCanvas
		translucentImage: self icon
		at: textMorph topLeft - (self icon width + 5 @ -2).
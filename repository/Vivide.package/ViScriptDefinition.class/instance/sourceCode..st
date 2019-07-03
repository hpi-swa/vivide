accessing
sourceCode: aString

	sourceCode = aString ifTrue: [^ self].
	sourceCode := aString asString withBlanksTrimmed.
	block := nil. "invalidate cache"
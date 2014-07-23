accessing
sourceCode: aString

	sourceCode = aString ifTrue: [^ self].
	
	method := nil.
	super sourceCode: aString.
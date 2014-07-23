as yet unclassified
details

	^ {
	{#code. self textViewCreator} -> {
		[:ref | #text -> ([ViTextStyler new
				classOrMetaClass: ref actualClass;
				styledTextFor: ref sourceCode asText] on: Error do: ['<Error: Method not found>'])] -> {MethodReference.Object}
	}.
	{#definition. self textViewCreator} -> {
		[:class | 	#text -> [:value :set | set
			ifFalse: [ViTextStyler new styledTextFor: class definition asText]
			ifTrue: [Compiler evaluate: value asString]]] -> {ClassDescription.Object}
	}
	}
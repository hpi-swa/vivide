as yet unclassified
details

	^ {
	{#code. self textViewCreator} -> {
		[:method | #text -> ([ViTextStyler new
				classOrMetaClass: method methodClass;
				styledTextFor: method getSource asText] on: Error do: ['<Error: Method not found>'])] -> {CompiledMethod.Object}
	}.
	{#definition. self textViewCreator} -> {
		[:class | 	#text -> [:value :set | set
			ifFalse: [ViTextStyler new styledTextFor: class definition asText]
			ifTrue: [Compiler evaluate: value asString]]] -> {ClassDescription.Object}
	}
	}
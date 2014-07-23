queries
details

	^ {
	{#code. self textViewCreator} -> {
		[:ref | #text -> [:value :set | set
			ifFalse: [ViTextStyler new
				classOrMetaClass: ref actualClass;
				styledTextFor: ref sourceCode asText]
			ifTrue: [ref actualClass
				compile: value asString
				classified: ref category]]] -> {MethodReference.Object}
	}.
	{#definition. self textViewCreator} -> {
		[:class | 	#text -> [:value :set | set
			ifFalse: [ViTextStyler new styledTextFor: class definition asText]
			ifTrue: [Compiler evaluate: value asString]]] -> {ClassDescription.Object}
	}
	}
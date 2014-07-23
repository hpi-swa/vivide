definitions
defd5487647ffe9154b9d5c3cc2c971450e
	<definition>

	^ ((Dictionary new) add: (#inputKind->MethodReference); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'d5487647-ffe9-154b-9d5c-3cc2c971450e'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:refs | refs gather: [:ref |
	(1 to: ref compiledMethod numLiterals - 2)
			collect: [:i | (ref compiledMethod literalAt: i)]
			thenSelect: [:o | o isSymbol]]]'); add: (#mapType->#all); add: (#block->[:refs | refs gather: [:ref |
	(1 to: ref compiledMethod numLiterals - 2)
			collect: [:i | (ref compiledMethod literalAt: i)]
			thenSelect: [:o | o isSymbol]]]); yourself)
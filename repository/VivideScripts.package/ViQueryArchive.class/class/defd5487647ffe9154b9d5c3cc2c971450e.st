definitions
defd5487647ffe9154b9d5c3cc2c971450e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:refs | refs gather: [:ref |
	(1 to: ref compiledMethod numLiterals - 2)
			collect: [:i | (ref compiledMethod literalAt: i)]
			thenSelect: [:o | o isSymbol]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'d5487647-ffe9-154b-9d5c-3cc2c971450e').
(#inputKind -> MethodReference).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:refs | refs gather: [:ref |
	(1 to: ref compiledMethod numLiterals - 2)
			collect: [:i | (ref compiledMethod literalAt: i)]
			thenSelect: [:o | o isSymbol]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})
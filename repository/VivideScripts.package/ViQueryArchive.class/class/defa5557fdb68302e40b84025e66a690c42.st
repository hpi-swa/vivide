definitions
defa5557fdb68302e40b84025e66a690c42
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:refs | refs gather: [:ref |
	(1 to: ref compiledMethod numLiterals - 2)
			collect: [:i | (ref compiledMethod literalAt: i)]
			thenSelect: [:o | o isSymbol]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'a5557fdb-6830-2e40-b840-25e66a690c42').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:refs | refs gather: [:ref |
	(1 to: ref compiledMethod numLiterals - 2)
			collect: [:i | (ref compiledMethod literalAt: i)]
			thenSelect: [:o | o isSymbol]]] value: in)]')})
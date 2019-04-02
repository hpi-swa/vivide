definitions
def75a2435f60e4d84c80d2aaa667a36c63
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | pkg classes intersection: ((SystemNavigation allUnusedClassesWithout: {{}.{}}) collect: [:nm | Smalltalk at: nm])]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'75a2435f-60e4-d84c-80d2-aaa667a36c63').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:37:43 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | pkg classes intersection: ((SystemNavigation allUnusedClassesWithout: {{}.{}}) collect: [:nm | Smalltalk at: nm])]]
		value: in) do: [:result | out addAll: result asList]]')})
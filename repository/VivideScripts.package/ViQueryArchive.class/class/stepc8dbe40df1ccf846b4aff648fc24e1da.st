steps
stepc8dbe40df1ccf846b4aff648fc24e1da
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:compiledMethod | { #text -> compiledMethod methodClass name }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'2880e8b0-6e57-1a48-b633-36bae364a433').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 February 2016 2:04:51 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:compiledMethod | { #text -> compiledMethod methodClass name }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2880e8b0-6e57-1a48-b633-36bae364a433').
(#iconCode -> 'nil').
(#id -> #'c8dbe40d-f1cc-f846-b4af-f648fc24e1da').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 February 2016 2:04:51 pm')
}))
})
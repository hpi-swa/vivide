steps
step0502fbc66bc851459f5d4b683a4318ed
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph listDirection }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5c5b7c8a-0ded-c846-ab7d-2177523597db').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph listDirection }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5c5b7c8a-0ded-c846-ab7d-2177523597db').
(#iconCode -> 'nil').
(#id -> #'0502fbc6-6bc8-5145-9f5d-4b683a4318ed').
(#isProperty -> true).
(#label -> nil).
(#next -> #'88b2dae6-1dca-d946-99c3-183a595a8132').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
}))
})
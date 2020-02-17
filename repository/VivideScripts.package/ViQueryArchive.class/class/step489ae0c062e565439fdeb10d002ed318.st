steps
step489ae0c062e565439fdeb10d002ed318
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph hResizing }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'ca556f32-a18b-064d-b6a3-28f7d13a5371').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph hResizing }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ca556f32-a18b-064d-b6a3-28f7d13a5371').
(#iconCode -> 'nil').
(#id -> #'489ae0c0-62e5-6543-9fde-b10d002ed318').
(#isProperty -> true).
(#label -> nil).
(#next -> #'8f53a4cc-854f-7843-a59c-68a80249da1d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
}))
})
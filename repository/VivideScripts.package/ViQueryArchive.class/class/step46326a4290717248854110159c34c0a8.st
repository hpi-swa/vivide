steps
step46326a4290717248854110159c34c0a8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph layoutPolicy class name }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'0245d375-1a75-294e-8526-405c4f49aa48').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph layoutPolicy class name }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0245d375-1a75-294e-8526-405c4f49aa48').
(#iconCode -> 'nil').
(#id -> #'46326a42-9071-7248-8541-10159c34c0a8').
(#isProperty -> true).
(#label -> nil).
(#next -> #'489ae0c0-62e5-6543-9fde-b10d002ed318').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
}))
})
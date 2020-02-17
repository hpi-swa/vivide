steps
step88b2dae61dcad94699c3183a595a8132
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph cellPositioning }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'489aac22-06c5-154f-99d1-ef46027f6f50').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 August 2019 2:00:39.243362 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph cellPositioning }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'489aac22-06c5-154f-99d1-ef46027f6f50').
(#iconCode -> 'nil').
(#id -> #'88b2dae6-1dca-d946-99c3-183a595a8132').
(#isProperty -> true).
(#label -> nil).
(#next -> #'c399546c-fcff-9046-bd66-0f7b1f946123').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 August 2019 2:00:39.241362 pm')
}))
})
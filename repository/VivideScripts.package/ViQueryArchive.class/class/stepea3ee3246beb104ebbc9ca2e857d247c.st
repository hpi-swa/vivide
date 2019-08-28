steps
stepea3ee3246beb104ebbc9ca2e857d247c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:b | { #text -> b category }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'fdb58d59-5a1a-b445-a6fa-f79f297ef366').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:30:43.230572 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:b | { #text -> b category }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'fdb58d59-5a1a-b445-a6fa-f79f297ef366').
(#iconCode -> 'nil').
(#id -> #'ea3ee324-6beb-104e-bbc9-ca2e857d247c').
(#isProperty -> true).
(#label -> nil).
(#next -> #'2086a182-26d8-214e-bb83-4b316ca429b3').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:30:43.230572 pm')
}))
})
steps
step42463360b3717a4baef3d75fa19c6da9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:demoMailbox | { #text -> demoMailbox name }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'83d239a5-e365-db4f-a0e6-62e02b9cb5b0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2020 2:55:34.832446 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:demoMailbox | { #text -> demoMailbox name }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'83d239a5-e365-db4f-a0e6-62e02b9cb5b0').
(#iconCode -> 'nil').
(#id -> #'42463360-b371-7a4b-aef3-d75fa19c6da9').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2020 2:55:34.832446 pm')
}))
})
steps
step60a1569b51d789478a007a82f2528572
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:row | { #value -> (row at: 'stride_lengths') asNumber . #text -> (row at: '#')}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'32d6236b-34a2-a945-a869-6c5b43df2c0c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 October 2020 11:25:21.996911 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:row | { #value -> (row at: ''stride_lengths'') asNumber . #text -> (row at: ''#'')}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'32d6236b-34a2-a945-a869-6c5b43df2c0c').
(#iconCode -> 'nil').
(#id -> #'60a1569b-51d7-8947-8a00-7a82f2528572').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 October 2020 11:25:21.996911 am')
}))
})
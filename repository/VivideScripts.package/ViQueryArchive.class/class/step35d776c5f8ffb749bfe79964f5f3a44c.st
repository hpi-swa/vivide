steps
step35d776c5f8ffb749bfe79964f5f3a44c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:orderedDictionary | orderedDictionary]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'1b34161d-a125-5240-b416-3f493940f495').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 October 2020 11:25:05.128911 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:orderedDictionary | orderedDictionary]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1b34161d-a125-5240-b416-3f493940f495').
(#iconCode -> 'nil').
(#id -> #'35d776c5-f8ff-b749-bfe7-9964f5f3a44c').
(#isProperty -> false).
(#label -> nil).
(#next -> #'a99ebe65-0918-7d46-800e-1c081ada5011').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 October 2020 11:25:05.127911 am').
(#view -> ViBarChart)
}))
})
steps
step6e7cdaaad4f7704ab59f3c776cecd6fb
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:morph | morph valueOfProperty: #indent ]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'716378ee-ce1f-d04a-a38a-97fb032fabed').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 September 2020 11:23:31.258468 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:morph | morph valueOfProperty: #indent ]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'716378ee-ce1f-d04a-a38a-97fb032fabed').
(#iconCode -> 'nil').
(#id -> #'6e7cdaaa-d4f7-704a-b59f-3c776cecd6fb').
(#isProperty -> false).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 September 2020 11:23:31.258468 am')
}))
})
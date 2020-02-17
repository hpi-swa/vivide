steps
step3f4d3ab2a67d054b9bf8eec6d9a0bfe2
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes
		reject: [:c | classes includes: c superclass]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'5dae62e9-1976-c94d-bf24-d48085622337').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:52:58 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes
		reject: [:c | classes includes: c superclass]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5dae62e9-1976-c94d-bf24-d48085622337').
(#iconCode -> 'nil').
(#id -> #'3f4d3ab2-a67d-054b-9bf8-eec6d9a0bfe2').
(#isProperty -> false).
(#label -> nil).
(#next -> #'9b96cd37-e54b-5649-b04d-d585c24b8303').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:52:58 am')
}))
})
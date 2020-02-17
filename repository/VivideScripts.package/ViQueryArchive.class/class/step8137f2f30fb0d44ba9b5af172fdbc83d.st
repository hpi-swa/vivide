steps
step8137f2f30fb0d44ba9b5af172fdbc83d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj key] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'d5039474-4766-6845-b0a8-02a7457ca9fc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:25:09 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj key] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d5039474-4766-6845-b0a8-02a7457ca9fc').
(#iconCode -> 'nil').
(#id -> #'8137f2f3-0fb0-d44b-a9b5-af172fdbc83d').
(#isProperty -> false).
(#label -> nil).
(#next -> #'4ec4f26a-3a16-9a4f-be55-656f7ebc3abe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 1:34:17 pm').
(#priority -> 5590)
}))
})
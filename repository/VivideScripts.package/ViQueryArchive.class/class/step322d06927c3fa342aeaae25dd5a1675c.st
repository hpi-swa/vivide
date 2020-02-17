steps
step322d06927c3fa342aeaae25dd5a1675c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:class | {
	class category.
	class
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'8d6b91cd-0f95-3d45-82a3-fae03ea9d080').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 April 2019 8:58:46.315845 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:class | {
	class category.
	class
	} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8d6b91cd-0f95-3d45-82a3-fae03ea9d080').
(#iconCode -> 'nil').
(#id -> #'322d0692-7c3f-a342-aeaa-e25dd5a1675c').
(#isProperty -> false).
(#label -> nil).
(#next -> #'146f1f57-1f03-c041-8896-b575dce4a8a6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 April 2019 8:58:46.315845 am')
}))
})
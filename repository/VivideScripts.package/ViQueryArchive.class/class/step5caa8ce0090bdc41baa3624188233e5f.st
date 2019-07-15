steps
step5caa8ce0090bdc41baa3624188233e5f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'02954be5-d532-1844-ba67-d5577598c1a6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 3:24:26 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'02954be5-d532-1844-ba67-d5577598c1a6').
(#iconCode -> 'nil').
(#id -> #'5caa8ce0-090b-dc41-baa3-624188233e5f').
(#isProperty -> false).
(#label -> 'Animation').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 3:24:26 pm').
(#inputKind -> ViAnimatedImageMorph).
(#priority -> 30).
(#view -> ViMorphView)
}))
})
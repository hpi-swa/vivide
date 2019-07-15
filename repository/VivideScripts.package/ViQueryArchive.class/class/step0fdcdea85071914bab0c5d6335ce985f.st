steps
step0fdcdea85071914bab0c5d6335ce985f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:mcp | mcp packageInfo systemCategories]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'9864bbfa-cbcb-8241-9924-8b81f421ed08').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:14:17 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:mcp | mcp packageInfo systemCategories]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'9864bbfa-cbcb-8241-9924-8b81f421ed08').
(#iconCode -> 'nil').
(#id -> #'0fdcdea8-5071-914b-ab0c-5d6335ce985f').
(#isProperty -> false).
(#label -> nil).
(#next -> #'8ca5adad-9868-4e4c-a40e-2b9deba00f31').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:14:17 pm').
(#inputKind -> MCPackage).
(#outputKind -> String).
(#priority -> 3670).
(#view -> ViTreeViewExtended)
}))
})
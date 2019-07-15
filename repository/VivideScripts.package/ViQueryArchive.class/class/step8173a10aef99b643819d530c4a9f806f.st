steps
step8173a10aef99b643819d530c4a9f806f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:wrapper | wrapper withoutListWrapper]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'06bccf4e-f9f8-4647-a7c4-c6a623b86f81').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 3:19:19 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:wrapper | wrapper withoutListWrapper]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'06bccf4e-f9f8-4647-a7c4-c6a623b86f81').
(#iconCode -> 'nil').
(#id -> #'8173a10a-ef99-b643-819d-530c4a9f806f').
(#isProperty -> false).
(#label -> nil).
(#next -> #'9af0df5a-068a-a649-9aa4-230c1f0217cc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 3:19:19 pm').
(#inputKind -> ObjectExplorerWrapper).
(#priority -> 4210)
}))
})
steps
stepc629f8b38251ed45b63c07d6415d137f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'351a1af8-4a69-4c4b-b35a-22f2f9a8ba59').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 December 2017 9:57:04 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'351a1af8-4a69-4c4b-b35a-22f2f9a8ba59').
(#iconCode -> 'nil').
(#id -> #'c629f8b3-8251-ed45-b63c-07d6415d137f').
(#isProperty -> false).
(#label -> 'Tiles').
(#next -> #'402016fc-613f-ad41-bce2-0e346832daa7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 December 2017 9:57:04 am').
(#view -> ViTileView)
}))
})
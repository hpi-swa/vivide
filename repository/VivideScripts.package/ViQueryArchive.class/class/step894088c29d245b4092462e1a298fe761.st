steps
step894088c29d245b4092462e1a298fe761
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:bag | bag sortedCounts in: [:histogram |
		histogram collect: [:map |
			{map key. histogram first key. map value}]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'405e59d0-1889-a842-a4e4-d779e69f8968').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:30:24 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:bag | bag sortedCounts in: [:histogram |
		histogram collect: [:map |
			{map key. histogram first key. map value}]]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'405e59d0-1889-a842-a4e4-d779e69f8968').
(#iconCode -> 'UiSilkIcons chartBarIcon').
(#id -> #'894088c2-9d24-5b40-9246-2e1a298fe761').
(#isProperty -> false).
(#label -> 'Sorted Bars').
(#next -> #'d740eb73-4267-9240-86ce-b2cb2018f68a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:30:24 pm').
(#inputKind -> Bag).
(#priority -> 4360).
(#view -> ViTreeViewExtended)
}))
})
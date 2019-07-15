steps
stepd346ff340c694d46ac758aa766aef148
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:obj | (PointerExplorerWrapper with: obj) contents]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'486c3b10-5657-884f-a276-98767744de63').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 3:52:47 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:obj | (PointerExplorerWrapper with: obj) contents]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'486c3b10-5657-884f-a276-98767744de63').
(#iconCode -> 'nil').
(#id -> #'d346ff34-0c69-4d46-ac75-8aa766aef148').
(#isProperty -> false).
(#label -> 'Chase pointers').
(#next -> #'8173a10a-ef99-b643-819d-530c4a9f806f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#labelColor -> '#999999').
(#outputKind -> ObjectExplorerWrapper).
(#priority -> 2000).
(#view -> ViTreeViewExtended)
}))
})
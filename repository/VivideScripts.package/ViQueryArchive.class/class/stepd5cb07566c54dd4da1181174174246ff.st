steps
stepd5cb07566c54dd4da1181174174246ff
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'551413ab-6968-7f47-8cba-689cdf389704').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 6:41:42 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'551413ab-6968-7f47-8cba-689cdf389704').
(#iconCode -> 'nil').
(#id -> #'d5cb0756-6c54-dd4d-a118-1174174246ff').
(#isProperty -> false).
(#label -> nil).
(#next -> #'3f2ccc8f-3fd6-2243-b5e4-1a2f686ed9bc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> Context).
(#outputKind -> CompiledMethod).
(#priority -> 5840).
(#view -> ViTreeViewExtended)
}))
})
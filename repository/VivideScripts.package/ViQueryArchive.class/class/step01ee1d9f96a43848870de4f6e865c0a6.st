steps
step01ee1d9f96a43848870de4f6e865c0a6
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2abc767f-15f7-9b49-89f7-a1ce37adde19').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 6:41:42 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2abc767f-15f7-9b49-89f7-a1ce37adde19').
(#iconCode -> 'nil').
(#id -> #'01ee1d9f-96a4-3848-870d-e4f6e865c0a6').
(#isProperty -> false).
(#label -> nil).
(#next -> #'6a945c46-e2f2-ac41-8b3e-dadc1328d8a3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> Context).
(#outputKind -> CompiledMethod).
(#priority -> 5860).
(#view -> ViTreeViewExtended)
}))
})
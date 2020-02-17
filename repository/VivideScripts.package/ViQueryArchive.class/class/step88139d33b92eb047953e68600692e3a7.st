steps
step88139d33b92eb047953e68600692e3a7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'f76435a9-bdcb-e141-8d58-446f5001db43').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 6:41:42 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f76435a9-bdcb-e141-8d58-446f5001db43').
(#iconCode -> 'nil').
(#id -> #'88139d33-b92e-b047-953e-68600692e3a7').
(#isProperty -> false).
(#label -> nil).
(#next -> #'989369d4-032d-1d49-adae-b70b2f36ea1e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> Context).
(#outputKind -> CompiledMethod).
(#priority -> 5870).
(#view -> ViTreeViewExtended)
}))
})
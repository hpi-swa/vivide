steps
step297515f311ce2e4594a2b23a6cad1586
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:node | { #text -> node class }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'7655c1c8-f426-3443-89a8-bb6a0b28181b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:26:37 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:node | { #text -> node class }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'7655c1c8-f426-3443-89a8-bb6a0b28181b').
(#iconCode -> 'nil').
(#id -> #'297515f3-11ce-2e45-94a2-b23a6cad1586').
(#isProperty -> true).
(#label -> 'AST').
(#next -> #'d7ca2eac-e77d-c24a-9906-a486603160a0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:26:37 am').
(#inputKind -> RBProgramNode).
(#priority -> 300)
}))
})
steps
step5b3d233ec93c0b42b8bafafb41d70a9e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:cls |
	(cls inheritsFrom: Morph) and: [(cls methodDict keys count: [:selector |
			#(grabKeyboard hasKeyboard) includes: selector]) == 1]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'d410a8c5-8fd0-8d48-bd82-d9c74b8642ca').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:cls |
	(cls inheritsFrom: Morph) and: [(cls methodDict keys count: [:selector |
			#(grabKeyboard hasKeyboard) includes: selector]) == 1]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d410a8c5-8fd0-8d48-bd82-d9c74b8642ca').
(#iconCode -> 'nil').
(#id -> #'5b3d233e-c93c-0b42-b8ba-fafb41d70a9e').
(#isProperty -> false).
(#label -> nil).
(#next -> #'35e3497e-2aff-7d4a-a4e9-6ab0b798b3ed').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2820)
}))
})
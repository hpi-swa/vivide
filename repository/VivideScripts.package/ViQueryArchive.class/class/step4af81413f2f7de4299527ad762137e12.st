steps
step4af81413f2f7de4299527ad762137e12
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:c1 :c2 | { c1. c2. (c1 instVarNames ifEmpty: ['-- no inst vars --'])} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'1e6196e2-caa1-784f-b0e9-90b142bf4171').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2018 5:15:45 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:c1 :c2 | { c1. c2. (c1 instVarNames ifEmpty: [''-- no inst vars --''])} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1e6196e2-caa1-784f-b0e9-90b142bf4171').
(#iconCode -> 'nil').
(#id -> #'4af81413-f2f7-de42-9952-7ad762137e12').
(#isProperty -> false).
(#label -> nil).
(#next -> #'3d6e30b2-9587-c542-a219-2c6dcc16e5f1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2018 5:15:45 pm').
(#inputKind -> #(nil nil))
}))
})
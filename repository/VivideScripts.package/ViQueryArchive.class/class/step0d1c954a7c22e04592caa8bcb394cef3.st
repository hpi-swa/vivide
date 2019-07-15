steps
step0d1c954a7c22e04592caa8bcb394cef3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:classOrText | classOrText isBehavior ifTrue: [classOrText]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'b87cea99-1358-c040-bab6-5d9cea675343').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 April 2019 9:02:53.560845 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:classOrText | classOrText isBehavior ifTrue: [classOrText]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b87cea99-1358-c040-bab6-5d9cea675343').
(#iconCode -> 'nil').
(#id -> #'0d1c954a-7c22-e045-92ca-a8bcb394cef3').
(#isProperty -> false).
(#label -> nil).
(#next -> #'7b32938c-f398-a742-a1ca-38108a4a569b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 April 2019 9:02:53.558845 am').
(#inputKind -> #(nil nil))
}))
})
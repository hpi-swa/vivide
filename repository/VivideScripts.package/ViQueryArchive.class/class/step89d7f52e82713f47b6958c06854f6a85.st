steps
step89d7f52e82713f47b6958c06854f6a85
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tally | (tally childrenOver: 0) sort]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'ece5ad7a-9f6e-f34b-adc9-2fe93695dc18').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tally | (tally childrenOver: 0) sort]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ece5ad7a-9f6e-f34b-adc9-2fe93695dc18').
(#iconCode -> 'nil').
(#id -> #'89d7f52e-8271-3f47-b695-8c06854f6a85').
(#isProperty -> false).
(#label -> nil).
(#next -> #'6a2bc047-14ab-cb4f-bd8a-9a78f9bc2bea').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> MessageTally).
(#outputKind -> MessageTally).
(#priority -> 2370)
}))
})
steps
stepc8d02930561846449d24456f53f464bc
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'0f9ac2ef-3c10-1e4d-b61f-4780483b5f29').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0f9ac2ef-3c10-1e4d-b61f-4780483b5f29').
(#iconCode -> 'nil').
(#id -> #'c8d02930-5618-4644-9d24-456f53f464bc').
(#isProperty -> false).
(#label -> nil).
(#next -> #'ed5b130b-8850-004d-a2e4-fa5157edc3b8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')
}))
})
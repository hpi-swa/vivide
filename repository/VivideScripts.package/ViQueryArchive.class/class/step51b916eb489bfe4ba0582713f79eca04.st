steps
step51b916eb489bfe4ba0582713f79eca04
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:node | node children]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'70b027c4-9ba5-1d4c-999d-ea125ea39eaa').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:26:37 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:node | node children]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'70b027c4-9ba5-1d4c-999d-ea125ea39eaa').
(#iconCode -> 'nil').
(#id -> #'51b916eb-489b-fe4b-a058-2713f79eca04').
(#isProperty -> false).
(#label -> nil).
(#next -> #'473ec1cf-01e6-db49-a731-58d0370843f8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:26:37 am')
}))
})
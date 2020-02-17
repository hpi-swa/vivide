steps
step76abd232f0e2204482116504f20d1cfe
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:byteString | ViProfile active organization definitionById: byteString ]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'b702818f-f9df-ff4d-86c7-542fcbfbfd7b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 April 2019 4:54:30.832086 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:byteString | ViProfile active organization definitionById: byteString ]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b702818f-f9df-ff4d-86c7-542fcbfbfd7b').
(#iconCode -> 'nil').
(#id -> #'76abd232-f0e2-2044-8211-6504f20d1cfe').
(#isProperty -> false).
(#label -> nil).
(#next -> #'d830d990-17a1-8c47-a4a8-b8c035324cef').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 April 2019 4:54:30.832086 pm')
}))
})
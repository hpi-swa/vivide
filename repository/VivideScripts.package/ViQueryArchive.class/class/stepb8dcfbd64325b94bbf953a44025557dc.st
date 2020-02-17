steps
stepb8dcfbd64325b94bbf953a44025557dc
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:step | step steps]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'51b75404-7bc0-ae43-89e7-523345109dea').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:16:12 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:step | step steps]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'51b75404-7bc0-ae43-89e7-523345109dea').
(#iconCode -> 'nil').
(#id -> #'b8dcfbd6-4325-b94b-bf95-3a44025557dc').
(#isProperty -> false).
(#label -> 'Query Properties').
(#next -> #'874bd769-4b84-dd45-9644-c5e3a23f29de').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#priority -> 6600).
(#view -> ViTreeViewExtended)
}))
})
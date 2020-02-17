steps
step6066b71f07827644873bd2c0d4d41a8a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:viQueryStepDefinition | ViProfile active organization orderedSteps detect: [:ea | ea definition == viQueryStepDefinition ]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'bf91d481-5020-0745-82e7-35386b9582eb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 6:02:07 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:viQueryStepDefinition | ViProfile active organization orderedSteps detect: [:ea | ea definition == viQueryStepDefinition ]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'bf91d481-5020-0745-82e7-35386b9582eb').
(#iconCode -> 'nil').
(#id -> #'6066b71f-0782-7644-873b-d2c0d4d41a8a').
(#isProperty -> false).
(#label -> nil).
(#next -> #'ab419a22-6d34-9c4f-8947-04384cebd943').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 6:02:07 pm')
}))
})
steps
step7f7cb928c2c5c8408c91995fa40b1fd5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj category] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'97f1e94f-53b3-154a-90a0-be8ad9aa1434').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj category] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'97f1e94f-53b3-154a-90a0-be8ad9aa1434').
(#iconCode -> 'nil').
(#id -> #'7f7cb928-c2c5-c840-8c91-995fa40b1fd5').
(#isProperty -> false).
(#label -> nil).
(#next -> #'0d81bd3f-a7d9-c94a-b10a-6df98b09bf28').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:22:46 pm').
(#priority -> 4390)
}))
})
steps
stepa64e11c56bfc5a42a738d78d947d80da
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj isVariableBinding ifTrue: ['variables'] ifFalse: ['methods']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'ec2ad906-a7ae-d944-bfd7-eb54dba8b39a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 5:27:17 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj isVariableBinding ifTrue: [''variables''] ifFalse: [''methods'']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ec2ad906-a7ae-d944-bfd7-eb54dba8b39a').
(#iconCode -> 'nil').
(#id -> #'a64e11c5-6bfc-5a42-a738-d78d947d80da').
(#isProperty -> false).
(#label -> nil).
(#next -> #'491508dd-c6fa-8642-90ac-c9d75625985b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 5:27:17 pm').
(#priority -> 3730)
}))
})
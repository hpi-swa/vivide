steps
step7665bebe0cf425439977ca902db88134
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:p | p at: #license] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'06f80cc9-96e6-de4a-bbde-1c56d79df1de').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 5:12:29 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:p | p at: #license] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'06f80cc9-96e6-de4a-bbde-1c56d79df1de').
(#iconCode -> 'nil').
(#id -> #'7665bebe-0cf4-2543-9977-ca902db88134').
(#isProperty -> false).
(#label -> nil).
(#next -> #'251d8797-f8c8-a443-891d-e54746e9e7e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 5:12:29 pm').
(#priority -> 4090)
}))
})
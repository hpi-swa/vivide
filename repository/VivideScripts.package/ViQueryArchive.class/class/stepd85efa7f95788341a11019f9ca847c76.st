steps
stepd85efa7f95788341a11019f9ca847c76
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | ref actualClass category] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5d8f2716-721f-2642-a0c4-7ce57fd0a809').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:ref | ref actualClass category] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5d8f2716-721f-2642-a0c4-7ce57fd0a809').
(#iconCode -> 'nil').
(#id -> #'d85efa7f-9578-8341-a110-19f9ca847c76').
(#isProperty -> false).
(#label -> nil).
(#next -> #'cb92050b-f386-8b49-bf36-aacf195d2c3c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:28:32 pm').
(#priority -> 3450)
}))
})
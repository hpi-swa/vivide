steps
step0c8adf165e6c8046b0976a6dfeaa52ea
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | method methodClass organization categoryOfElement: method selector] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'66f685d5-8a4c-5a40-a016-8c9730d1e96e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | method methodClass organization categoryOfElement: method selector] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'66f685d5-8a4c-5a40-a016-8c9730d1e96e').
(#iconCode -> 'nil').
(#id -> #'0c8adf16-5e6c-8046-b097-6a6dfeaa52ea').
(#isProperty -> false).
(#label -> nil).
(#next -> #'778ab7d2-5835-0347-8b0a-cb8214791085').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 1790)
}))
})
steps
step92eb4914ce3c1f4fb8134bd8cf3c75a6
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | method methodClass organization categoryOfElement: method selector] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'42b9a77e-4850-4048-b4bb-4a3f3a9fe61b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | method methodClass organization categoryOfElement: method selector] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'42b9a77e-4850-4048-b4bb-4a3f3a9fe61b').
(#iconCode -> 'nil').
(#id -> #'92eb4914-ce3c-1f4f-b813-4bd8cf3c75a6').
(#isProperty -> false).
(#label -> nil).
(#next -> #'b0d75ae3-0b04-4649-8258-e41f89b3bfc6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 1270)
}))
})
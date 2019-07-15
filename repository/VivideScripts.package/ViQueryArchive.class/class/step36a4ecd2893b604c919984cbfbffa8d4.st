steps
step36a4ecd2893b604c919984cbfbffa8d4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | method methodClass organization categoryOfElement: method selector] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'f27f6a39-dfe2-7b4a-9356-3833d6b3404e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | method methodClass organization categoryOfElement: method selector] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f27f6a39-dfe2-7b4a-9356-3833d6b3404e').
(#iconCode -> 'nil').
(#id -> #'36a4ecd2-893b-604c-9199-84cbfbffa8d4').
(#isProperty -> false).
(#label -> nil).
(#next -> #'2771411b-7842-1340-b34e-9817cf81fa72').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 6540)
}))
})
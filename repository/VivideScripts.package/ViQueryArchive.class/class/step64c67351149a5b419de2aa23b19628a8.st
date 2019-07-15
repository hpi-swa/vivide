steps
step64c67351149a5b419de2aa23b19628a8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:part | part isScript ifTrue: ['Steps'] ifFalse: ['Definitions']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'aa5e9c44-1dea-fa44-a31f-e5b5194f0eb9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 September 2013 12:04:52 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:part | part isScript ifTrue: [''Steps''] ifFalse: [''Definitions'']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'aa5e9c44-1dea-fa44-a31f-e5b5194f0eb9').
(#iconCode -> 'nil').
(#id -> #'64c67351-149a-5b41-9de2-aa23b19628a8').
(#isProperty -> false).
(#label -> nil).
(#next -> #'8729d445-82f2-7f4d-abfa-8044a4165d7f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:56:21 am').
(#inputKind -> ViScriptObject).
(#outputKind -> String).
(#priority -> 3640)
}))
})
steps
step79c77c1fcaea9342ab06db5aad7909f0
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | ((method selector includesSubstring: #small caseSensitive: false)
	or: [method selector includesSubstring: #bullet caseSensitive: false])
		ifTrue: ['1) Small Icons'] ifFalse: ['2) Regular Icons']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'bf27ad25-3a73-494b-9dd1-a09083c1dc83').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:method | ((method selector includesSubstring: #small caseSensitive: false)
	or: [method selector includesSubstring: #bullet caseSensitive: false])
		ifTrue: [''1) Small Icons''] ifFalse: [''2) Regular Icons'']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'bf27ad25-3a73-494b-9dd1-a09083c1dc83').
(#iconCode -> 'nil').
(#id -> #'79c77c1f-caea-9342-ab06-db5aad7909f0').
(#isProperty -> false).
(#label -> nil).
(#next -> #'22d7a896-a0a2-af4d-863e-f70f5ed40ff9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 1310)
}))
})
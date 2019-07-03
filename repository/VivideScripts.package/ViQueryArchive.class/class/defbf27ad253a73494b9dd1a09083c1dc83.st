definitions
defbf27ad253a73494b9dd1a09083c1dc83
	<definition>

	^ (Dictionary newFrom: {
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
})
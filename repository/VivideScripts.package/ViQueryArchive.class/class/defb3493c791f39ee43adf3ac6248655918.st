definitions
defb3493c791f39ee43adf3ac6248655918
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:o | o third withAllSuperclasses in: [:c |
	c size > 2
		ifTrue: [c atLast: 3]
		ifFalse: [
			o third subclasses
				ifNotEmpty: [o third]
				ifEmpty: [c atLast: 2 "Object"]]]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'b3493c79-1f39-ee43-adf3-ac6248655918').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:40:37 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:o | o third withAllSuperclasses in: [:c |
	c size > 2
		ifTrue: [c atLast: 3]
		ifFalse: [
			o third subclasses
				ifNotEmpty: [o third]
				ifEmpty: [c atLast: 2 "Object"]]]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})
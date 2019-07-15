steps
stepa62c64219b1098418280932805e5b88b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'b3493c79-1f39-ee43-adf3-ac6248655918').
(#iconCode -> 'nil').
(#id -> #'a62c6421-9b10-9841-8280-932805e5b88b').
(#isProperty -> false).
(#label -> nil).
(#next -> #'e12b2fbe-9eec-2c4d-90cd-9cddd8d57668').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:40:37 pm').
(#priority -> 4780)
}))
})
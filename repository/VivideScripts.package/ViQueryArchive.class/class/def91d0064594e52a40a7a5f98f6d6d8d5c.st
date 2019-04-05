definitions
def91d0064594e52a40a7a5f98f6d6d8d5c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:part | part isScript ifTrue: ['Steps'] ifFalse: ['Definitions']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'91d00645-94e5-2a40-a7a5-f98f6d6d8d5c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 September 2013 12:04:52 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:part | part isScript ifTrue: [''Steps''] ifFalse: [''Definitions'']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})
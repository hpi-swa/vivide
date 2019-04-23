definitions
defaa5e9c441deafa44a31fe5b5194f0eb9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:part | part isScript ifTrue: ['Steps'] ifFalse: ['Definitions']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'aa5e9c44-1dea-fa44-a31f-e5b5194f0eb9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 September 2013 12:04:52 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:part | part isScript ifTrue: [''Steps''] ifFalse: [''Definitions'']] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})
definitions
def06866ea3c0610042ba48bf733322d2d6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj isVariableBinding
	ifTrue: ['variables']
	ifFalse: [obj isBehavior
		ifTrue: ['classes']
		ifFalse: ['methods']]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'06866ea3-c061-0042-ba48-bf733322d2d6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:58:12 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj isVariableBinding
	ifTrue: [''variables'']
	ifFalse: [obj isBehavior
		ifTrue: [''classes'']
		ifFalse: [''methods'']]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})
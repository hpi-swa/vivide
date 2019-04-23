definitions
def6cf2af5249e3484ca2688783121ba43a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj isVariableBinding
	ifTrue: ['** variables **']
	ifFalse: [obj isBehavior
		ifTrue: [obj isTrait
			ifTrue: ['** traits **']
			ifFalse: ['** inheritance **']]
		ifFalse: [obj methodClass organization categoryOfElement: obj selector]]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'6cf2af52-49e3-484c-a268-8783121ba43a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 November 2013 10:51:34 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj isVariableBinding
	ifTrue: [''** variables **'']
	ifFalse: [obj isBehavior
		ifTrue: [obj isTrait
			ifTrue: [''** traits **'']
			ifFalse: [''** inheritance **'']]
		ifFalse: [obj methodClass organization categoryOfElement: obj selector]]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})
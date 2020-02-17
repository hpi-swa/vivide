steps
stepf128659b7f02364dafc1143f418bf135
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj isVariableBinding
	ifTrue: ['** variables **']
	ifFalse: [obj isBehavior
		ifTrue: [obj isTrait
			ifTrue: ['** traits **']
			ifFalse: ['** inheritance **']]
		ifFalse: [obj methodClass organization categoryOfElement: obj selector]]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'6cf2af52-49e3-484c-a268-8783121ba43a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 November 2013 10:51:34 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:obj | obj isVariableBinding
	ifTrue: [''** variables **'']
	ifFalse: [obj isBehavior
		ifTrue: [obj isTrait
			ifTrue: [''** traits **'']
			ifFalse: [''** inheritance **'']]
		ifFalse: [obj methodClass organization categoryOfElement: obj selector]]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6cf2af52-49e3-484c-a268-8783121ba43a').
(#iconCode -> 'nil').
(#id -> #'f128659b-7f02-364d-afc1-143f418bf135').
(#isProperty -> false).
(#label -> nil).
(#next -> #'266651fd-1b71-0244-ac45-79f564404cc5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 November 2013 10:51:34 am').
(#priority -> 5460)
}))
})
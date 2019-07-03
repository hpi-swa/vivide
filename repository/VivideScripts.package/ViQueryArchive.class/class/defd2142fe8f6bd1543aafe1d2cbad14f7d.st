definitions
defd2142fe8f6bd1543aafe1d2cbad14f7d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:someObject |
	([:obj | (obj selector beginsWith: #initialize) not] value: someObject) &
	([:obj | (obj selector beginsWith: #baseline) not] value: someObject) &
	([:obj | (obj selector endsWith: #Form) not] value: someObject) &
	([:obj | (obj selector beginsWith: #version) not] value: someObject) ]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'d2142fe8-f6bd-1543-aafe-1d2cbad14f7d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:someObject |
	([:obj | (obj selector beginsWith: #initialize) not] value: someObject) &
	([:obj | (obj selector beginsWith: #baseline) not] value: someObject) &
	([:obj | (obj selector endsWith: #Form) not] value: someObject) &
	([:obj | (obj selector beginsWith: #version) not] value: someObject) ]] value: in)]')
})
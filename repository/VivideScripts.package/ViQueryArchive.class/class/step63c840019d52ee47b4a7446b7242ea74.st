steps
step63c840019d52ee47b4a7446b7242ea74
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'d2142fe8-f6bd-1543-aafe-1d2cbad14f7d').
(#iconCode -> 'nil').
(#id -> #'63c84001-9d52-ee47-b4a7-446b7242ea74').
(#isProperty -> false).
(#label -> nil).
(#next -> #'dfb2af53-c012-e14a-ae23-1ee9009c0034').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 3050)
}))
})
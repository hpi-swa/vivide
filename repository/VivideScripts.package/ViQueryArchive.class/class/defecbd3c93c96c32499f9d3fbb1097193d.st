definitions
defecbd3c93c96c32499f9d3fbb1097193d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:obj | true]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'ecbd3c93-c96c-3249-9f9d-3fbb1097193d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:obj | true]] value: in)]')
})
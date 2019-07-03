definitions
def9add979d55df5945b5e9b904c29b9de1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:method | method selector endsWith: #Icon]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'9add979d-55df-5945-b5e9-b904c29b9de1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:method | method selector endsWith: #Icon]] value: in)]')
})
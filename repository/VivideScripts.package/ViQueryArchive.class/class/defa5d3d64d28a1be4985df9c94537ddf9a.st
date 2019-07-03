definitions
defa5d3d64d28a1be4985df9c94537ddf9a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> ' ' }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'a5d3d64d-28a1-be49-85df-9c94537ddf9a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '10 April 2019 11:10:50.31711 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> '' '' }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})
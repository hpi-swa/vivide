definitions
def5c5b7c8a0dedc846ab7d2177523597db
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph listDirection }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5c5b7c8a-0ded-c846-ab7d-2177523597db').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph listDirection }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})
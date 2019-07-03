definitions
defca556f32a18b064db6a328f7d13a5371
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph hResizing }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'ca556f32-a18b-064d-b6a3-28f7d13a5371').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph hResizing }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})
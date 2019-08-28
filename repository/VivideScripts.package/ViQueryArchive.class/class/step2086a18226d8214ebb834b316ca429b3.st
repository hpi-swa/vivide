steps
step2086a18226d8214ebb834b316ca429b3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:protoObjectClass | { #text -> ' ' }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5e31b0c9-7d14-3a4c-8901-d2f4c015010e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:45:12.867572 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:protoObjectClass | { #text -> '' '' }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5e31b0c9-7d14-3a4c-8901-d2f4c015010e').
(#iconCode -> 'nil').
(#id -> #'2086a182-26d8-214e-bb83-4b316ca429b3').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:45:12.865572 pm')
}))
})
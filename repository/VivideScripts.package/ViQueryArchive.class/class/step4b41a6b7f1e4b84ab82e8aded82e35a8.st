steps
step4b41a6b7f1e4b84ab82e8aded82e35a8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:entry | { #text -> ('[' , entry key time print24 , '] ' , entry value) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'0edcebeb-4dca-884b-9739-2ae55b4f9fe3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:entry | { #text -> (''['' , entry key time print24 , ''] '' , entry value) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0edcebeb-4dca-884b-9739-2ae55b4f9fe3').
(#iconCode -> 'nil').
(#id -> #'4b41a6b7-f1e4-b84a-b82e-8aded82e35a8').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm')
}))
})
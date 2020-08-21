steps
step588247497e9041418a13f1aabab6c504
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:spec | {#icon -> spec key first scaleIconToDisplay. #text -> spec key second. #object -> spec value}]
		value: o)]] value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'474df409-baa4-4e45-95cb-59c011f6f77b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 9:38:18.250517 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:spec | {#icon -> spec key first scaleIconToDisplay. #text -> spec key second. #object -> spec value}]
		value: o)]] value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'474df409-baa4-4e45-95cb-59c011f6f77b').
(#iconCode -> 'nil').
(#id -> #'58824749-7e90-4141-8a13-f1aabab6c504').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 9:38:18.250517 am')
}))
})
steps
step3682e953476b8b4180d47c51797e5058
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:spec | {#icon -> spec key first scaleIconToDisplay. #text -> spec key second. #object -> spec value. #doubleClicked
		-> [[spec value value open]]}]
		value: o)]] value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'6d786c49-e20c-af42-a25e-df538c40e8ee').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 9:45:42.310517 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:spec | {#icon -> spec key first scaleIconToDisplay. #text -> spec key second. #object -> spec value. #doubleClicked
		-> [[spec value value open]]}]
		value: o)]] value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6d786c49-e20c-af42-a25e-df538c40e8ee').
(#iconCode -> 'nil').
(#id -> #'3682e953-476b-8b41-80d4-7c51797e5058').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 9:45:42.310517 am')
}))
})
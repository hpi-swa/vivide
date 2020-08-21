steps
step8e39cc9baddb204f8a40d39ef37df695
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:spec | {#text -> spec key. #object -> spec value}]
		value: o)]] value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'48f78ce0-07bf-554c-9283-b282588fc532').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 9:32:32.793517 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:spec | {#text -> spec key. #object -> spec value}]
		value: o)]] value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'48f78ce0-07bf-554c-9283-b282588fc532').
(#iconCode -> 'nil').
(#id -> #'8e39cc9b-addb-204f-8a40-d39ef37df695').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 9:32:32.792517 am')
}))
})
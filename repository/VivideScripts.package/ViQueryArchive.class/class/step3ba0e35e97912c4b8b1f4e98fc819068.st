steps
step3ba0e35e97912c4b8b1f4e98fc819068
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:spec | {#text -> spec key. #object -> spec value}]
		value: o)]] value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'82006103-093d-9444-a088-4c391ce20de1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 9:26:42.666517 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:spec | {#text -> spec key. #object -> spec value}]
		value: o)]] value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'82006103-093d-9444-a088-4c391ce20de1').
(#iconCode -> 'nil').
(#id -> #'3ba0e35e-9791-2c4b-8b1f-4e98fc819068').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 9:26:42.666517 am')
}))
})
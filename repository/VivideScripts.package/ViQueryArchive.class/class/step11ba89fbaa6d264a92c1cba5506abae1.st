steps
step11ba89fbaa6d264a92c1cba5506abae1
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:obj | {#text -> obj printString}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'cb356ae2-d027-6a47-b973-e5696e88f1bc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 December 2014 2:57:53 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:obj | {#text -> obj printString}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'cb356ae2-d027-6a47-b973-e5696e88f1bc').
(#iconCode -> 'nil').
(#id -> #'11ba89fb-aa6d-264a-92c1-cba5506abae1').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 December 2014 2:57:53 pm')
}))
})
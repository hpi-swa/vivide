steps
stepd74bf7b995099b4caa8731ad835a95b3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:mail | { #text -> mail date relativePrintString }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'eb571ae7-5c70-8146-bc63-3c95f8732935').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:22:10 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:mail | { #text -> mail date relativePrintString }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'eb571ae7-5c70-8146-bc63-3c95f8732935').
(#iconCode -> 'nil').
(#id -> #'d74bf7b9-9509-9b4c-aa87-31ad835a95b3').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:22:10 am').
(#hAlignment -> #right)
}))
})
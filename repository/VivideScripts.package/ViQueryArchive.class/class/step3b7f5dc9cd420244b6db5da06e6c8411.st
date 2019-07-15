steps
step3b7f5dc9cd420244b6db5da06e6c8411
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:mail | { #text -> mail message bodyTextFormatted }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'83d4d050-53eb-7a4f-9811-4279830dfeeb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:23:43 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:mail | { #text -> mail message bodyTextFormatted }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'83d4d050-53eb-7a4f-9811-4279830dfeeb').
(#iconCode -> 'nil').
(#id -> #'3b7f5dc9-cd42-0244-b6db-5da06e6c8411').
(#isProperty -> true).
(#label -> 'Mail').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:23:43 am').
(#inputKind -> MDMail).
(#view -> ViPluggableTextMorph)
}))
})
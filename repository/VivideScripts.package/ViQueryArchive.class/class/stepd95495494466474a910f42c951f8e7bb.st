steps
stepd95495494466474a910f42c951f8e7bb
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:groups | groups sorted: [:g1 :g2 | g1 first name <= g2 first name]] value: in) asList]).
(#className -> #ViScriptDefinition).
(#id -> #'f36446c7-a084-374b-96c2-37585f1f81ff').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:15:31.984086 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:groups | groups sorted: [:g1 :g2 | g1 first name <= g2 first name]] value: in) asList]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f36446c7-a084-374b-96c2-37585f1f81ff').
(#iconCode -> 'nil').
(#id -> #'d9549549-4466-474a-910f-42c951f8e7bb').
(#isProperty -> false).
(#label -> nil).
(#next -> #'226b1b77-3cc6-6e41-9347-aa64b42e33e5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:15:31.984086 am')
}))
})
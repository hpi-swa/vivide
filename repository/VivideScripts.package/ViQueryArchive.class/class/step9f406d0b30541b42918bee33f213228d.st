steps
step9f406d0b30541b42918bee33f213228d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:mails | mails sorted: [:a :b | a date >= b date]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'70002938-2087-504d-b3d5-01c23dbcacef').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '22 March 2018 5:17:08 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:mails | mails sorted: [:a :b | a date >= b date]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'70002938-2087-504d-b3d5-01c23dbcacef').
(#iconCode -> 'nil').
(#id -> #'9f406d0b-3054-1b42-918b-ee33f213228d').
(#isProperty -> false).
(#label -> nil).
(#next -> #'5b500dbe-e712-874d-9c3c-5abcc18d9283').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '22 March 2018 5:17:08 pm')
}))
})
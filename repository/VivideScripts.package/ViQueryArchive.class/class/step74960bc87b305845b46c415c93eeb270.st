steps
step74960bc87b305845b46c415c93eeb270
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:mails | mails reject: [:m | m sender beginsWith: 'commits']] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'cb6b83e6-95ae-d740-8fb0-d1e1aa59c007').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:19:23 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:mails | mails reject: [:m | m sender beginsWith: ''commits'']] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'cb6b83e6-95ae-d740-8fb0-d1e1aa59c007').
(#iconCode -> 'nil').
(#id -> #'74960bc8-7b30-5845-b46c-415c93eeb270').
(#isProperty -> false).
(#label -> nil).
(#next -> #'9f406d0b-3054-1b42-918b-ee33f213228d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:19:23 am')
}))
})
steps
step61009caeb7fb434cbfab3a240dc5768a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:method | method selector endsWith: #Icon]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'9add979d-55df-5945-b5e9-b904c29b9de1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:method | method selector endsWith: #Icon]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'9add979d-55df-5945-b5e9-b904c29b9de1').
(#iconCode -> 'nil').
(#id -> #'61009cae-b7fb-434c-bfab-3a240dc5768a').
(#isProperty -> false).
(#label -> nil).
(#next -> #'904c20d9-4fe8-d644-bd0d-ec510cf667f3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 1290)
}))
})
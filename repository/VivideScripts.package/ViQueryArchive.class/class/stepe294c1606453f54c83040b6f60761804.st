steps
stepe294c1606453f54c83040b6f60761804
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:version | { #text -> ((version info ancestors collect: [:info | info name]) joinSeparatedBy: String cr) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'86ac133a-b154-8c4a-b2ec-3fe781c222d0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:42:25.010086 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:version | { #text -> ((version info ancestors collect: [:info | info name]) joinSeparatedBy: String cr) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'86ac133a-b154-8c4a-b2ec-3fe781c222d0').
(#iconCode -> 'nil').
(#id -> #'e294c160-6453-f54c-8304-0b6f60761804').
(#isProperty -> true).
(#label -> nil).
(#next -> #'5550da93-8f7a-934c-93bf-6f5174ab3ab2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:42:25.010086 am')
}))
})
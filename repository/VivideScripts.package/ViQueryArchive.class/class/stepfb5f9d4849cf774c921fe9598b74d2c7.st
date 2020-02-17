steps
stepfb5f9d4849cf774c921fe9598b74d2c7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:process | { #text -> process priority }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'845e4ee7-f438-6e46-bc41-abff27a72fa3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 4:58:54 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:process | { #text -> process priority }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'845e4ee7-f438-6e46-bc41-abff27a72fa3').
(#iconCode -> 'nil').
(#id -> #'fb5f9d48-49cf-774c-921f-e9598b74d2c7').
(#isProperty -> true).
(#label -> nil).
(#next -> #'33a2c2ee-bac8-3b4a-842d-faf5586d7042').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 4:58:54 pm').
(#priority -> 4330)
}))
})
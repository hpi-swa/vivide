steps
stepd62c865932925541b3b608b9ff46de99
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:entry | { #text -> entry name }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'92aafdad-a9ee-ae41-893c-f835cf535b53').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:entry | { #text -> entry name }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'92aafdad-a9ee-ae41-893c-f835cf535b53').
(#iconCode -> 'nil').
(#id -> #'d62c8659-3292-5541-b3b6-08b9ff46de99').
(#isProperty -> true).
(#label -> nil).
(#next -> #'1e371f14-64f0-004c-94ca-e667218e38e4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 June 2014 4:24:35 pm').
(#priority -> 6240)
}))
})
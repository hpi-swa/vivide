steps
step1f71149b9a667343a8bc932007c75e1f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (obj at: #name) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'f500c1a2-862d-0c4d-b37a-b84e035e2a98').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 4:51:14 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (obj at: #name) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f500c1a2-862d-0c4d-b37a-b84e035e2a98').
(#iconCode -> 'nil').
(#id -> #'1f71149b-9a66-7343-a8bc-932007c75e1f').
(#isProperty -> true).
(#label -> nil).
(#next -> #'bcf11958-a60a-6546-a0c1-c08cb69f40df').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 4:51:14 pm').
(#priority -> 4110)
}))
})
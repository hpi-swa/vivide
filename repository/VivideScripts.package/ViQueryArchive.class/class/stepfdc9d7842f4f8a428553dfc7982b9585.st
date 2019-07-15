steps
stepfdc9d7842f4f8a428553dfc7982b9585
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cs | {#text -> (ChangeSet current = cs ifTrue: [('<b>', cs name, '</b>') asHtmlText] ifFalse: [cs name])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'a192a4df-36eb-6542-88e6-44bb5d57a20f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:50:14 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cs | {#text -> (ChangeSet current = cs ifTrue: [(''<b>'', cs name, ''</b>'') asHtmlText] ifFalse: [cs name])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'a192a4df-36eb-6542-88e6-44bb5d57a20f').
(#iconCode -> 'nil').
(#id -> #'fdc9d784-2f4f-8a42-8553-dfc7982b9585').
(#isProperty -> true).
(#label -> nil).
(#next -> #'e89d0b5a-e4fe-584b-aed4-96f20385b05c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:50:14 pm').
(#priority -> 6190)
}))
})
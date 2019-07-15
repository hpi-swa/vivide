steps
step651607ab44293e44b61f86c177f0d112
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> ('<font color="#AAAAAA">', (step definition
	ifNil: ['ref']
	ifNotNil: [:def | def references size asString]), '</font>') asHtmlText } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5763657d-8745-2f4e-88a3-3b0caa9bde41').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:24:01 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (''<font color="#AAAAAA">'', (step definition
	ifNil: [''ref'']
	ifNotNil: [:def | def references size asString]), ''</font>'') asHtmlText } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5763657d-8745-2f4e-88a3-3b0caa9bde41').
(#iconCode -> 'nil').
(#id -> #'651607ab-4429-3e44-b61f-86c177f0d112').
(#isProperty -> true).
(#label -> nil).
(#next -> #'0caac112-a8fd-c443-bf49-f884e1be7743').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:24:01 pm').
(#priority -> 6630)
}))
})
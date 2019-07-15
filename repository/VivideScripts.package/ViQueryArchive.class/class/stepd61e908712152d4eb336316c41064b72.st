steps
stepd61e908712152d4eb336316c41064b72
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step definition ifNotNil: [:def | def category ifNotNil: [:lbl | ('<font color="#000088">', lbl, '</font>') asHtmlText]]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'81948c0e-8882-e34f-9ceb-0ec2ebedc648').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:18:56 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step definition ifNotNil: [:def | def category ifNotNil: [:lbl | (''<font color="#000088">'', lbl, ''</font>'') asHtmlText]]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'81948c0e-8882-e34f-9ceb-0ec2ebedc648').
(#iconCode -> 'nil').
(#id -> #'d61e9087-1215-2d4e-b336-316c41064b72').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:18:56 pm').
(#priority -> 6650)
}))
})
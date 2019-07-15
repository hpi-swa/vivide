steps
step4a0e686142f96642808b5c122c31721a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step category ifNotNil: [:lbl | ('<font color="#008800">', lbl, '</font>') asHtmlText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'af8de8c6-14ff-2c4c-92c5-84e06357a0c9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:19:25 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step category ifNotNil: [:lbl | (''<font color="#008800">'', lbl, ''</font>'') asHtmlText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'af8de8c6-14ff-2c4c-92c5-84e06357a0c9').
(#iconCode -> 'nil').
(#id -> #'4a0e6861-42f9-6642-808b-5c122c31721a').
(#isProperty -> true).
(#label -> nil).
(#next -> #'651607ab-4429-3e44-b61f-86c177f0d112').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:19:25 pm').
(#priority -> 6620)
}))
})
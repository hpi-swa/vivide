steps
step874bd7694b84dd459644c5e3a23f29de
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step label ifNotNil: [:lbl | ('<b>', lbl, '</b>') asHtmlText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'c588b512-a0b0-1342-a708-e310dcb863ac').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:18:19 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step label ifNotNil: [:lbl | (''<b>'', lbl, ''</b>'') asHtmlText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c588b512-a0b0-1342-a708-e310dcb863ac').
(#iconCode -> 'nil').
(#id -> #'874bd769-4b84-dd45-9644-c5e3a23f29de').
(#isProperty -> true).
(#label -> nil).
(#next -> #'4a0e6861-42f9-6642-808b-5c122c31721a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:18:19 pm').
(#priority -> 6610)
}))
})
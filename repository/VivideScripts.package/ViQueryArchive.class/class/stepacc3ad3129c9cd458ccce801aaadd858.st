steps
stepacc3ad3129c9cd458ccce801aaadd858
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #icon -> (flag priority = #high ifTrue: [ViEclipseIcons hprioTskIcon] ifFalse: []) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5bacd3f3-e43c-2e4b-b030-2e2d99bcbb11').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:46:49 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #icon -> (flag priority = #high ifTrue: [ViEclipseIcons hprioTskIcon] ifFalse: []) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5bacd3f3-e43c-2e4b-b030-2e2d99bcbb11').
(#iconCode -> 'nil').
(#id -> #'acc3ad31-29c9-cd45-8ccc-e801aaadd858').
(#isProperty -> true).
(#label -> nil).
(#next -> #'cdbe8071-be1b-984e-b62a-2c1b721153c0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:46:49 pm').
(#inputKind -> ViFlagComment).
(#priority -> 3910)
}))
})
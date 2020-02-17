steps
stepe89d0b5ae4fe584baed496f20385b05c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cs | { #icon -> ((cs instVarNamed: #revertable) == true ifTrue: [UiFugueIcons arrowCurve180LeftIcon] ifFalse: [ ]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'a7b9762e-38a5-ad47-84c4-45ab8a195604').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:52:37 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cs | { #icon -> ((cs instVarNamed: #revertable) == true ifTrue: [UiFugueIcons arrowCurve180LeftIcon] ifFalse: [ ]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'a7b9762e-38a5-ad47-84c4-45ab8a195604').
(#iconCode -> 'nil').
(#id -> #'e89d0b5a-e4fe-584b-aed4-96f20385b05c').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:52:37 pm').
(#priority -> 6200)
}))
})
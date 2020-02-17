steps
steped82703794ca9a45b2233148d0dc9fc9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:wnd | { #text -> (wnd isSystemWindow ifTrue: [wnd label ifNil: ['-'] ifNotNil: [:lbl | lbl asString]] ifFalse: [nil]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'e3554109-9f58-a54a-bcb3-b119f32adc6f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 July 2014 2:15:45 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:wnd | { #text -> (wnd isSystemWindow ifTrue: [wnd label ifNil: [''-''] ifNotNil: [:lbl | lbl asString]] ifFalse: [nil]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e3554109-9f58-a54a-bcb3-b119f32adc6f').
(#iconCode -> 'nil').
(#id -> #'ed827037-94ca-9a45-b223-3148d0dc9fc9').
(#isProperty -> true).
(#label -> nil).
(#next -> #'88b2345b-3bda-5e41-a90f-b81c36b39fd8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 July 2014 2:15:45 pm').
(#priority -> 6510)
}))
})
steps
stepe578a963cfd45641b9426e1eef180ad2
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:morph | { #text -> (morph model ifNil: ['-'] ifNotNil: [:m | m asString]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5b5e5bd5-d701-1840-a76e-2e149c617e4b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 March 2014 10:13:57 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:morph | { #text -> (morph model ifNil: [''-''] ifNotNil: [:m | m asString]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5b5e5bd5-d701-1840-a76e-2e149c617e4b').
(#iconCode -> 'nil').
(#id -> #'e578a963-cfd4-5641-b942-6e1eef180ad2').
(#isProperty -> true).
(#label -> nil).
(#next -> #'07d98c15-a20c-0b45-9dc3-ba44905e9a7a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 March 2014 10:13:57 am').
(#priority -> 6030).
(#view -> ViTreeViewExtended)
}))
})
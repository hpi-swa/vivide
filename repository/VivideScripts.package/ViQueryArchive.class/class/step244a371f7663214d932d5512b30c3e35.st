steps
step244a371f7663214d932d5512b30c3e35
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:hit | { #text -> (((hit at: #info) at: #venue) at: '@conference' ifAbsent: ['-']) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'f25d2c69-45f7-384c-a80d-5c1d095534d4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 May 2014 11:09:25 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:hit | { #text -> (((hit at: #info) at: #venue) at: ''@conference'' ifAbsent: [''-'']) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f25d2c69-45f7-384c-a80d-5c1d095534d4').
(#iconCode -> 'nil').
(#id -> #'244a371f-7663-214d-932d-5512b30c3e35').
(#isProperty -> true).
(#label -> nil).
(#next -> #'7b87d63f-f0ab-524e-b406-502817498dbb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 May 2014 11:09:25 am').
(#priority -> 6330)
}))
})
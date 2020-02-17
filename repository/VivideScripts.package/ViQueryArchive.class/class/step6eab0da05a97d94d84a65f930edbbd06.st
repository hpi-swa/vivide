steps
step6eab0da05a97d94d84a65f930edbbd06
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:hit | { #text -> ((((hit at: #info) at: #title) at: #text) convertFromEncoding: 'utf-8') unescapeEntities asHtmlText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'ebbfc22f-65be-0e4d-a16b-11136d5f86c2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 2:37:53 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:hit | { #text -> ((((hit at: #info) at: #title) at: #text) convertFromEncoding: ''utf-8'') unescapeEntities asHtmlText }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ebbfc22f-65be-0e4d-a16b-11136d5f86c2').
(#iconCode -> 'nil').
(#id -> #'6eab0da0-5a97-d94d-84a6-5f930edbbd06').
(#isProperty -> true).
(#label -> nil).
(#next -> #'244a371f-7663-214d-932d-5512b30c3e35').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 2:37:53 pm').
(#priority -> 6320)
}))
})
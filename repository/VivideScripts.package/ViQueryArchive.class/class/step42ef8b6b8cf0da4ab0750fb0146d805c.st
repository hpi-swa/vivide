steps
step42ef8b6b8cf0da4ab0750fb0146d805c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (obj isDirectory
	ifTrue: ['']
	ifFalse: [(obj size // 1024 max: 1) asString, ' KB']) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'160a08d5-cd77-5c44-8286-1c5af506486f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (obj isDirectory
	ifTrue: ['''']
	ifFalse: [(obj size // 1024 max: 1) asString, '' KB'']) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'160a08d5-cd77-5c44-8286-1c5af506486f').
(#iconCode -> 'nil').
(#id -> #'42ef8b6b-8cf0-da4a-b075-0fb0146d805c').
(#isProperty -> true).
(#label -> nil).
(#next -> #'1cd2a5a3-05f3-9046-8fd2-06f0a076f80b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Size').
(#labelColor -> '#AAAAAA').
(#priority -> 2790)
}))
})
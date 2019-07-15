steps
stepe5bd3f6cf63fb14889bc82784354babd
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | { #text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: [ViToolSet printRelativeTimeStamp: def fullTimeStamp]
		ifFalse: ['-']]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'064de4ea-4a9a-d549-942b-960508fd4d6c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | { #text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: [ViToolSet printRelativeTimeStamp: def fullTimeStamp]
		ifFalse: [''-'']]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'064de4ea-4a9a-d549-942b-960508fd4d6c').
(#iconCode -> 'nil').
(#id -> #'e5bd3f6c-f63f-b148-89bc-82784354babd').
(#isProperty -> true).
(#label -> nil).
(#next -> #'57759e79-162b-7647-b6c7-af705463339b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Modified').
(#labelColor -> '#AAAAAA').
(#priority -> 1160)
}))
})
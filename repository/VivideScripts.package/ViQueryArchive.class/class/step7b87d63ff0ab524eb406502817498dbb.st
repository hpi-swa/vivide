steps
step7b87d63ff0ab524eb406502817498dbb
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:hit | { #text -> (((hit at: #info) at: #venue) at: '@journal' ifAbsent: ['-']) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'ab3cd5a2-4d86-aa49-bcf6-2a35e6758e2d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 May 2014 11:10:45 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:hit | { #text -> (((hit at: #info) at: #venue) at: ''@journal'' ifAbsent: [''-'']) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ab3cd5a2-4d86-aa49-bcf6-2a35e6758e2d').
(#iconCode -> 'nil').
(#id -> #'7b87d63f-f0ab-524e-b406-502817498dbb').
(#isProperty -> true).
(#label -> nil).
(#next -> #'ae6288a6-a692-bf42-84df-1174cbab45a4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 May 2014 11:10:45 am').
(#priority -> 6340)
}))
})
steps
step0b1978b87b59484281f59f94cce1ec89
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cls | { #text -> (  ViToolSet linesOfCodeForClassWithoutExtensions: cls ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'0e793ebb-1c74-5246-a592-f943b787ac55').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 3:23:10 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cls | { #text -> (  ViToolSet linesOfCodeForClassWithoutExtensions: cls ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0e793ebb-1c74-5246-a592-f943b787ac55').
(#iconCode -> 'nil').
(#id -> #'0b1978b8-7b59-4842-81f5-9f94cce1ec89').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 3:23:10 pm').
(#priority -> 4840)
}))
})
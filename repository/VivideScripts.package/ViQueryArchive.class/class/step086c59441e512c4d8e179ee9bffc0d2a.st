steps
step086c59441e512c4d8e179ee9bffc0d2a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cls | { #text -> (  cls methodDict values size + cls class methodDict values size ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'b04c23b7-7d38-904a-b96b-4259bcf0de66').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 3:22:32 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cls | { #text -> (  cls methodDict values size + cls class methodDict values size ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b04c23b7-7d38-904a-b96b-4259bcf0de66').
(#iconCode -> 'nil').
(#id -> #'086c5944-1e51-2c4d-8e17-9ee9bffc0d2a').
(#isProperty -> true).
(#label -> nil).
(#next -> #'0b1978b8-7b59-4842-81f5-9f94cce1ec89').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 3:22:32 pm').
(#priority -> 4830)
}))
})
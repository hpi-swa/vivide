steps
step56b2492ff394db42ade3e2d633f5230d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | { #text -> line value }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'28800740-28a4-cd40-b24a-9b6b6da79bb9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 9:31:36 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | { #text -> line value }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'28800740-28a4-cd40-b24a-9b6b6da79bb9').
(#iconCode -> 'nil').
(#id -> #'56b2492f-f394-db42-ade3-e2d633f5230d').
(#isProperty -> true).
(#label -> nil).
(#next -> #'0369a0d4-6ce3-9f49-b251-c92b852ef534').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 9:31:36 am').
(#headerText -> 'Code').
(#priority -> 5260).
(#resizeMode -> #rigid)
}))
})
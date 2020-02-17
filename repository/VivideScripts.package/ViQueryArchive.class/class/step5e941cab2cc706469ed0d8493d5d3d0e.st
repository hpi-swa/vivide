steps
step5e941cab2cc706469ed0d8493d5d3d0e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  'a ', obj value class name ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'8572f770-da04-804b-a566-2b332c424ef9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:59:12 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  ''a '', obj value class name ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8572f770-da04-804b-a566-2b332c424ef9').
(#iconCode -> 'nil').
(#id -> #'5e941cab-2cc7-0646-9ed0-d8493d5d3d0e').
(#isProperty -> true).
(#label -> nil).
(#next -> #'2b264d15-bb33-124e-8b3f-227ef7073118').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#labelColor -> #'000000').
(#priority -> 4470)
}))
})
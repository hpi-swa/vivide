steps
stepc656fd1e4df72247b673381f86e04eef
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:tally | {#text -> tally tally}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'4c1025cd-ff88-c845-b092-7d4f6dc4e5d9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:tally | {#text -> tally tally}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4c1025cd-ff88-c845-b092-7d4f6dc4e5d9').
(#iconCode -> 'nil').
(#id -> #'c656fd1e-4df7-2247-b673-381f86e04eef').
(#isProperty -> true).
(#label -> nil).
(#next -> #'89d7f52e-8271-3f47-b695-8c06854f6a85').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Tally').
(#labelColor -> '#AAAAAA').
(#priority -> 2360)
}))
})
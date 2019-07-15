steps
stepd30b0a27e492ab4c807d23bd5f7ccf4b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:pkg | { #morph -> (Morph new color: Color green muchDarker; extent: (pkg linesOfCode // 100) @ 10) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'b8cd1ee3-55ca-104d-af64-03448b83aed8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:47:30 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:pkg | { #morph -> (Morph new color: Color green muchDarker; extent: (pkg linesOfCode // 100) @ 10) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b8cd1ee3-55ca-104d-af64-03448b83aed8').
(#iconCode -> 'nil').
(#id -> #'d30b0a27-e492-ab4c-807d-23bd5f7ccf4b').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:47:30 pm').
(#priority -> 5080)
}))
})
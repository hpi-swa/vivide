steps
stepbd2cba9d0fb42e479e837e3ddec6640f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> obj info time }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'9f68a86f-f3d5-f54f-8d4b-750c695ac660').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> obj info time }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'9f68a86f-f3d5-f54f-8d4b-750c695ac660').
(#iconCode -> 'nil').
(#id -> #'bd2cba9d-0fb4-2e47-9e83-7e3ddec6640f').
(#isProperty -> true).
(#label -> nil).
(#next -> #'f977b925-bca8-8e41-8e7a-33672b08eb1d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Time').
(#labelColor -> '#AAAAAA').
(#priority -> 2960)
}))
})
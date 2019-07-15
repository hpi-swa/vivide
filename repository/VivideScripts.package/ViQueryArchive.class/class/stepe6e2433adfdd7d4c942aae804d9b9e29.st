steps
stepe6e2433adfdd7d4c942aae804d9b9e29
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> obj info date }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'cb435a45-ab33-e24f-a035-8d0d77a46185').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> obj info date }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'cb435a45-ab33-e24f-a035-8d0d77a46185').
(#iconCode -> 'nil').
(#id -> #'e6e2433a-dfdd-7d4c-942a-ae804d9b9e29').
(#isProperty -> true).
(#label -> nil).
(#next -> #'bd2cba9d-0fb4-2e47-9e83-7e3ddec6640f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Date').
(#labelColor -> '#AAAAAA').
(#priority -> 2950)
}))
})
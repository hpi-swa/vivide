steps
stepca50309f543bc84583d0749a6f7cbb2e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> obj first }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'ecbc18cc-e435-5e4f-9560-903b574cb0a6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> obj first }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ecbc18cc-e435-5e4f-9560-903b574cb0a6').
(#iconCode -> 'nil').
(#id -> #'ca50309f-543b-c845-83d0-749a6f7cbb2e').
(#isProperty -> true).
(#label -> nil).
(#next -> #'fdb69e0a-57ea-394a-a74a-b986817dca93').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#labelColor -> '#AAAAAA').
(#priority -> 3180)
}))
})
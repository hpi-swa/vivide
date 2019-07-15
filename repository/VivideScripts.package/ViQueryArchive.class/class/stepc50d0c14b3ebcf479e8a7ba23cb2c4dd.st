steps
stepc50d0c14b3ebcf479e8a7ba23cb2c4dd
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  obj key ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'fed08ead-4e41-8947-aaca-a7f7e0593e55').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:25:09 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  obj key ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'fed08ead-4e41-8947-aaca-a7f7e0593e55').
(#iconCode -> 'nil').
(#id -> #'c50d0c14-b3eb-cf47-9e8a-7ba23cb2c4dd').
(#isProperty -> true).
(#label -> nil).
(#next -> #'46b904bc-22e5-a84a-8f30-894b0f7df352').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 8:36:52 am').
(#priority -> 5200)
}))
})
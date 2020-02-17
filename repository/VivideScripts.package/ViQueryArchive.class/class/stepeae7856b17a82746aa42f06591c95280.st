steps
stepeae7856b17a82746aa42f06591c95280
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  ViObjectOriginService doObject: obj ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5f492cc8-f4ed-454b-8e00-3656de382df2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  ViObjectOriginService doObject: obj ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5f492cc8-f4ed-454b-8e00-3656de382df2').
(#iconCode -> 'nil').
(#id -> #'eae7856b-17a8-2746-aa42-f06591c95280').
(#isProperty -> true).
(#label -> nil).
(#next -> #'7faad50a-ce32-d04b-93a5-abcb22ff458e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:35:35 pm').
(#priority -> 3490)
}))
})
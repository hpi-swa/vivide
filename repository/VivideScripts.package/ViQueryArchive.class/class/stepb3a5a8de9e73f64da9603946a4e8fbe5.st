steps
stepb3a5a8de9e73f64da9603946a4e8fbe5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject class == ViSeparator ifTrue: [ { #text -> ' ' } ] ifFalse: [ [:obj | { #text -> (  obj value identityHash ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'0a3e5b10-abb5-d843-97b1-0be0602fb350').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 4:10:44 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject class == ViSeparator ifTrue: [ { #text -> '' '' } ] ifFalse: [ [:obj | { #text -> (  obj value identityHash ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0a3e5b10-abb5-d843-97b1-0be0602fb350').
(#iconCode -> 'nil').
(#id -> #'b3a5a8de-9e73-f64d-a960-3946a4e8fbe5').
(#isProperty -> true).
(#label -> nil).
(#next -> #'e44e7438-eba5-7344-8590-a778889ab428').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:20:51 am').
(#labelColor -> #AAAAAA).
(#priority -> 5040)
}))
})
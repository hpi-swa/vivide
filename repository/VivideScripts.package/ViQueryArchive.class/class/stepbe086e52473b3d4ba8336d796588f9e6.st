steps
stepbe086e52473b3d4ba8336d796588f9e6
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:ref | { #text -> ref classSymbol } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'0dd38407-434f-4e4c-b128-867eb22c193e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 July 2014 11:37:10 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:ref | { #text -> ref classSymbol } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0dd38407-434f-4e4c-b128-867eb22c193e').
(#iconCode -> 'nil').
(#id -> #'be086e52-473b-3d4b-a833-6d796588f9e6').
(#isProperty -> true).
(#label -> nil).
(#next -> #'e61b1b9c-dca8-0246-aff4-93c3b091547a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Class').
(#labelColor -> '#AAAAAA').
(#priority -> 1550)
}))
})
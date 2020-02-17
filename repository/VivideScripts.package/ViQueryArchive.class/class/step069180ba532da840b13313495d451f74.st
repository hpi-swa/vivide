steps
step069180ba532da840b13313495d451f74
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:change | { #icon -> (change key caseOf: {
	[#add] -> [UiFugueIcons plusSmallIcon].
	[#change] -> [UiFugueIcons pencilSmallIcon].
	[#remove] -> [UiFugueIcons minusSmallIcon]}
	otherwise: [ViIcons blankIcon]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'ec214310-9ec7-9545-81b6-e42fedec50df').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 5:05:04 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:change | { #icon -> (change key caseOf: {
	[#add] -> [UiFugueIcons plusSmallIcon].
	[#change] -> [UiFugueIcons pencilSmallIcon].
	[#remove] -> [UiFugueIcons minusSmallIcon]}
	otherwise: [ViIcons blankIcon]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ec214310-9ec7-9545-81b6-e42fedec50df').
(#iconCode -> 'nil').
(#id -> #'069180ba-532d-a840-b133-13495d451f74').
(#isProperty -> true).
(#label -> nil).
(#next -> #'7d49f967-e5fd-2d45-a452-864c859fa223').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 5:05:04 pm').
(#priority -> 6410)
}))
})
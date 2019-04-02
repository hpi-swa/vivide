definitions
defec2143109ec7954581b6e42fedec50df
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:change | { #icon -> (change key caseOf: {
	[#add] -> [UiFugueIcons plusSmallIcon].
	[#change] -> [UiFugueIcons pencilSmallIcon].
	[#remove] -> [UiFugueIcons minusSmallIcon]}
	otherwise: [ViIcons blankIcon]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'ec214310-9ec7-9545-81b6-e42fedec50df').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 5:05:04 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:change | { #icon -> (change key caseOf: {
	[#add] -> [UiFugueIcons plusSmallIcon].
	[#change] -> [UiFugueIcons pencilSmallIcon].
	[#remove] -> [UiFugueIcons minusSmallIcon]}
	otherwise: [ViIcons blankIcon]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})
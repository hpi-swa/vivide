definitions
def53bac4db9eeb8b42b93309d6154d8d3d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (obj at: #fullName).
	#icon -> ((obj at: #admin)
		ifTrue: [UiFugueIcons crownIcon]
		ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'53bac4db-9eeb-8b42-b933-09d6154d8d3d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 September 2013 12:03:56 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (obj at: #fullName).
	#icon -> ((obj at: #admin)
		ifTrue: [UiFugueIcons crownIcon]
		ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})
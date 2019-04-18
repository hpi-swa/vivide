definitions
def97a39793e99b4d4ca8f5037c909dceb8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj).
	#color -> ((obj category includesSubstring: 'override' caseSensitive: false)
		ifTrue: [Color red muchLighter paler] ifFalse: [])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'97a39793-e99b-4d4c-a8f5-037c909dceb8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 January 2014 11:38:48 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj).
	#color -> ((obj category includesSubstring: ''override'' caseSensitive: false)
		ifTrue: [Color red muchLighter paler] ifFalse: [])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})
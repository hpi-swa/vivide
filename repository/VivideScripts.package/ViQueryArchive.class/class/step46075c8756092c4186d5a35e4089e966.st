steps
step46075c8756092c4186d5a35e4089e966
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj).
	#color -> ((obj category includesSubstring: 'override' caseSensitive: false)
		ifTrue: [Color red muchLighter paler] ifFalse: [
			(#(acceptObjectService: asList isList asScript isScript open openScript openScriptWith: storeOn: storeCompactOn: asTuples) includes: obj selector)
				ifTrue: [Color clover alpha: 0.2] ifFalse: []
			])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'97a39793-e99b-4d4c-a8f5-037c909dceb8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 January 2014 11:38:48 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj).
	#color -> ((obj category includesSubstring: ''override'' caseSensitive: false)
		ifTrue: [Color red muchLighter paler] ifFalse: [
			(#(acceptObjectService: asList isList asScript isScript open openScript openScriptWith: storeOn: storeCompactOn: asTuples) includes: obj selector)
				ifTrue: [Color clover alpha: 0.2] ifFalse: []
			])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'97a39793-e99b-4d4c-a8f5-037c909dceb8').
(#iconCode -> 'nil').
(#id -> #'46075c87-5609-2c41-86d5-a35e4089e966').
(#isProperty -> true).
(#label -> nil).
(#next -> #'39e0739a-b359-364a-9c0f-a5b758f8f9c8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 1230)
}))
})
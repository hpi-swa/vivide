steps
step39e0739ab359364a9c0fa5b758f8f9c8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
	ifTrue: [ { #text -> nil } ]
	ifFalse: [ [:ref | {
		#text -> ( ref actualClass theNonMetaClass name ).
		#color -> ((ref category includesSubstring: 'override' caseSensitive: false)
			ifTrue: [Color red muchLighter paler] ifFalse: []) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'7673666b-ce50-0749-b668-fdfd895e16b2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
	ifTrue: [ { #text -> nil } ]
	ifFalse: [ [:ref | {
		#text -> ( ref actualClass theNonMetaClass name ).
		#color -> ((ref category includesSubstring: ''override'' caseSensitive: false)
			ifTrue: [Color red muchLighter paler] ifFalse: []) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'7673666b-ce50-0749-b668-fdfd895e16b2').
(#iconCode -> 'nil').
(#id -> #'39e0739a-b359-364a-9c0f-a5b758f8f9c8').
(#isProperty -> true).
(#label -> nil).
(#next -> #'240cc4b3-dcec-8c4e-bbe8-29ff7c118338').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#labelColor -> '#AAAAAA').
(#priority -> 1240)
}))
})
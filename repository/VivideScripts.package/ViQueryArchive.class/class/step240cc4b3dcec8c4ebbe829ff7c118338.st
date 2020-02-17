steps
step240cc4b3dcec8c4ebbe829ff7c118338
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
	ifTrue: [ { #text -> nil } ]
	ifFalse: [ [:ref | {
		#text -> (  ref actualClass organization categoryOfElement: ref selector ).
		#color -> ((ref category includesSubstring: 'override' caseSensitive: false)
			ifTrue: [Color red muchLighter paler] ifFalse: []) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'411fe2ba-bf14-1b42-894f-51e6b19391e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
	ifTrue: [ { #text -> nil } ]
	ifFalse: [ [:ref | {
		#text -> (  ref actualClass organization categoryOfElement: ref selector ).
		#color -> ((ref category includesSubstring: ''override'' caseSensitive: false)
			ifTrue: [Color red muchLighter paler] ifFalse: []) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'411fe2ba-bf14-1b42-894f-51e6b19391e2').
(#iconCode -> 'nil').
(#id -> #'240cc4b3-dcec-8c4e-bbe8-29ff7c118338').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 January 2014 11:34:40 am').
(#priority -> 4620)
}))
})
definitions
def411fe2babf141b42894f51e6b19391e2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
	ifTrue: [ { #text -> nil } ]
	ifFalse: [ [:ref | {
		#text -> (  ref actualClass organization categoryOfElement: ref selector ).
		#color -> ((ref category includesSubstring: 'override' caseSensitive: false)
			ifTrue: [Color red muchLighter paler] ifFalse: []) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'411fe2ba-bf14-1b42-894f-51e6b19391e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
	ifTrue: [ { #text -> nil } ]
	ifFalse: [ [:ref | {
		#text -> (  ref actualClass organization categoryOfElement: ref selector ).
		#color -> ((ref category includesSubstring: ''override'' caseSensitive: false)
			ifTrue: [Color red muchLighter paler] ifFalse: []) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})
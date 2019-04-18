definitions
def7673666bce500749b668fdfd895e16b2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
	ifTrue: [ { #text -> nil } ]
	ifFalse: [ [:ref | {
		#text -> ( ref actualClass theNonMetaClass name ).
		#color -> ((ref category includesSubstring: 'override' caseSensitive: false)
			ifTrue: [Color red muchLighter paler] ifFalse: []) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'7673666b-ce50-0749-b668-fdfd895e16b2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
	ifTrue: [ { #text -> nil } ]
	ifFalse: [ [:ref | {
		#text -> ( ref actualClass theNonMetaClass name ).
		#color -> ((ref category includesSubstring: ''override'' caseSensitive: false)
			ifTrue: [Color red muchLighter paler] ifFalse: []) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})
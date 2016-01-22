definitions
def768fe1d5783ea546b83a016c4db6d552
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:morph | 
{ #text
		-> (morph printStringLimitedTo: 20).
	#icon
		-> (morph imageForm scaledToSize: 16 @ 16).
	#selectedLater
		-> [[morph addHalo]] }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'768fe1d5-783e-a546-b83a-016c4db6d552').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:morph | 
{ #text
		-> (morph printStringLimitedTo: 20).
	#icon
		-> (morph imageForm scaledToSize: 16 @ 16).
	#selectedLater
		-> [[morph addHalo]] }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})
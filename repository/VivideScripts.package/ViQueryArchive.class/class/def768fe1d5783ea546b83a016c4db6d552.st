definitions
def768fe1d5783ea546b83a016c4db6d552
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'15 December 2015 10:39:29 am'); yourself)); add: (#id->#'768fe1d5-783e-a546-b83a-016c4db6d552'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:morph | 
{ #text
		-> (morph printStringLimitedTo: 20).
	#icon
		-> (morph imageForm scaledToSize: 16 @ 16).
	#selectedLater
		-> [[morph addHalo]] }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:morph | 
{ #text
		-> (morph printStringLimitedTo: 20).
	#icon
		-> (morph imageForm scaledToSize: 16 @ 16).
	#selectedLater
		-> [[morph addHalo]] }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)
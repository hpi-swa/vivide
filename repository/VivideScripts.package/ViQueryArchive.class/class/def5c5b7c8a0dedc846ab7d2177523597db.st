definitions
def5c5b7c8a0dedc846ab7d2177523597db
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'15 December 2015 10:39:29 am'); yourself)); add: (#id->#'5c5b7c8a-0ded-c846-ab7d-2177523597db'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph listDirection }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph listDirection }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)
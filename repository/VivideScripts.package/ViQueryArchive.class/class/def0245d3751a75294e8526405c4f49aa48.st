definitions
def0245d3751a75294e8526405c4f49aa48
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'15 December 2015 10:39:29 am'); yourself)); add: (#id->#'0245d375-1a75-294e-8526-405c4f49aa48'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph layoutPolicy class name }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph layoutPolicy class name }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)
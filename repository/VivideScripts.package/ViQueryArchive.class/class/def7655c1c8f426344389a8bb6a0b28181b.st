definitions
def7655c1c8f426344389a8bb6a0b28181b
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:26:37 am'); yourself)); add: (#id->#'7655c1c8-f426-3443-89a8-bb6a0b28181b'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:node | { #text -> node class }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:node | { #text -> node class }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)
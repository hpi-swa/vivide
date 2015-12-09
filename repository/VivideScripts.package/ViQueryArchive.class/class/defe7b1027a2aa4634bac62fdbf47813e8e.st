definitions
defe7b1027a2aa4634bac62fdbf47813e8e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:42:44 am'); yourself)); add: (#id->#'e7b1027a-2aa4-634b-ac62-fdbf47813e8e'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> (script priority >= 9999 ifFalse: [script priority]) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> (script priority >= 9999 ifFalse: [script priority]) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)
definitions
deffa4a701a27a2fd47a62cb5c018b350f6
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:26:37 am'); yourself)); add: (#id->#'fa4a701a-27a2-fd47-a62c-b5c018b350f6'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:node | { #text
		-> ((ViTextStyler new classOrMetaClass: Object;
				 styledTextFor: node source asText) copyFrom: node start to: node stop) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:node | { #text
		-> ((ViTextStyler new classOrMetaClass: Object;
				 styledTextFor: node source asText) copyFrom: node start to: node stop) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)
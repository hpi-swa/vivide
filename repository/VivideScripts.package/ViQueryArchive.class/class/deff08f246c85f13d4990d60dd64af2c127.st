definitions
deff08f246c85f13d4990d60dd64af2c127
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'8 June 2015 6:08:58 pm'); yourself)); add: (#id->#'f08f246c-85f1-3d49-90d6-0dd64af2c127'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:def | #text -> (ViTextStyler new styledTextFor: def sourceCode asText)] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:def | #text -> (ViTextStyler new styledTextFor: def sourceCode asText)] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)
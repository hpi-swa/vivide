definitions
def736d017387dfb44ab06ae1600b6b3dd9
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2015 2:35:48 pm'); yourself)); add: (#id->#'736d0173-87df-b44a-b06a-e1600b6b3dd9'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object category])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object category])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)
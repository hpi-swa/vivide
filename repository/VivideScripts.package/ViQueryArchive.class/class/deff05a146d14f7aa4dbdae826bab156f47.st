definitions
deff05a146d14f7aa4dbdae826bab156f47
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'736d0173-87df-b44a-b06a-e1600b6b3dd9'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2015 2:36:10 pm'); yourself)); add: (#id->#'f05a146d-14f7-aa4d-bdae-826bab156f47'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object category])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object category])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)
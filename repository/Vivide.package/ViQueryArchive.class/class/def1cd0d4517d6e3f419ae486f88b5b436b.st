definitions
def1cd0d4517d6e3f419ae486f88b5b436b
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2015 2:34:28 pm'); yourself)); add: (#id->#'1cd0d451-7d6e-3f41-9ae4-86f88b5b436b'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object className])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object className])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)
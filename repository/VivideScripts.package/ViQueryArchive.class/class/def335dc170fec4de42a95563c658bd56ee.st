definitions
def335dc170fec4de42a95563c658bd56ee
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'1cd0d451-7d6e-3f41-9ae4-86f88b5b436b'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2015 2:36:10 pm'); yourself)); add: (#id->#'335dc170-fec4-de42-a955-63c658bd56ee'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object className])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:object | { #text -> (object isText ifFalse: [object className])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)
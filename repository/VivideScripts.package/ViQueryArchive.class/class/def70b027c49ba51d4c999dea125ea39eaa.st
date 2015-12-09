definitions
def70b027c49ba51d4c999dea125ea39eaa
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:26:37 am'); yourself)); add: (#id->#'70b027c4-9ba5-1d4c-999d-ea125ea39eaa'); add: (#block->[:in :out | (
	[:objects | objects collect: [:node | node children]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:node | node children]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
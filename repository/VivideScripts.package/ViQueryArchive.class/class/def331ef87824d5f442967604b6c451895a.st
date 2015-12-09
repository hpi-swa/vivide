definitions
def331ef87824d5f442967604b6c451895a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:02:31 am'); yourself)); add: (#id->#'331ef878-24d5-f442-9676-04b6c451895a'); add: (#block->[:in :out | (
	[:objects | objects collect: [:method | method]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:method | method]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
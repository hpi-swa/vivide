definitions
def714534c032b88444af6fb7e2f4be6913
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 10:56:04 am'); yourself)); add: (#id->#'714534c0-32b8-8444-af6f-b7e2f4be6913'); add: (#block->[:in :out | (
	[:objects | objects collect: [:object | object asStringOrText]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | object asStringOrText]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
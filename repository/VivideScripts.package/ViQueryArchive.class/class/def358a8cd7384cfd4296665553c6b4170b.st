definitions
def358a8cd7384cfd4296665553c6b4170b
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 10:48:47 am'); yourself)); add: (#id->#'358a8cd7-384c-fd42-9666-5553c6b4170b'); add: (#block->[:in :out | (
	[:objects | objects collect: [:method | method methodClass]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:method | method methodClass]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
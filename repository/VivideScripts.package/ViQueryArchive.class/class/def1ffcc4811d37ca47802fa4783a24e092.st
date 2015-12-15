definitions
def1ffcc4811d37ca47802fa4783a24e092
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'15 December 2015 10:39:29 am'); yourself)); add: (#id->#'1ffcc481-1d37-ca47-802f-a4783a24e092'); add: (#block->[:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
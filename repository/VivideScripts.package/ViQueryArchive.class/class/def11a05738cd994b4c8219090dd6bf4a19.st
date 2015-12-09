definitions
def11a05738cd994b4c8219090dd6bf4a19
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:26:37 am'); yourself)); add: (#id->#'11a05738-cd99-4b4c-8219-090dd6bf4a19'); add: (#block->[:in :out | (
	[:objects | objects collect: [:method | RBParser parseMethod: method getSource asString]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:method | RBParser parseMethod: method getSource asString]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
definitions
defd38699e6bec1344c9a51ed500e0bf6dd
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 9:44:59 am'); yourself)); add: (#id->#'d38699e6-bec1-344c-9a51-ed500e0bf6dd'); add: (#block->[:in :out | (
	[:objects | objects collect: [:method | method selector]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:method | method selector]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
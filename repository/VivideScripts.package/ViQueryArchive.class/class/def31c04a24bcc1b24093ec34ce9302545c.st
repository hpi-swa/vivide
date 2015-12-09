definitions
def31c04a24bcc1b24093ec34ce9302545c
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 10:25:03 am'); yourself)); add: (#id->#'31c04a24-bcc1-b240-93ec-34ce9302545c'); add: (#block->[:in :out | (
	[:objects | objects collect: [:method | method selector]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:method | method selector]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
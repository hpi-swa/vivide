definitions
defae614fa7bdf249408e18ad7542e24f44
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 1:06:03 pm'); yourself)); add: (#id->#'ae614fa7-bdf2-4940-8e18-ad7542e24f44'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | cls subclasses]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | cls subclasses]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
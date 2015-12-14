definitions
defdceac215ec7aaa48a9d90c1e45043057
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 December 2015 11:52:58 am'); yourself)); add: (#id->#'dceac215-ec7a-aa48-a9d9-0c1e45043057'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | cls subclasses select: [:c | c category = cls category]]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | cls subclasses select: [:c | c category = cls category]]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
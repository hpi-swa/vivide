definitions
def0a99bf89fc80d44d83e92d70789cf056
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 December 2015 11:20:18 am'); yourself)); add: (#id->#'0a99bf89-fc80-d44d-83e9-2d70789cf056'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
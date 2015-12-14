definitions
def7ce23c0831f0c940bd2d0a209eb5f472
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 December 2015 11:52:58 am'); yourself)); add: (#id->#'7ce23c08-31f0-c940-bd2d-0a209eb5f472'); add: (#block->[:in :out | (
	[:objects | objects collect: [:category | SystemOrganization listAtCategoryNamed: category]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:category | SystemOrganization listAtCategoryNamed: category]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
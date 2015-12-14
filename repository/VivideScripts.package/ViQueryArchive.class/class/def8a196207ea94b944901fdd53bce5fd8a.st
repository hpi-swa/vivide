definitions
def8a196207ea94b944901fdd53bce5fd8a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 December 2015 11:30:58 am'); yourself)); add: (#id->#'8a196207-ea94-b944-901f-dd53bce5fd8a'); add: (#block->[:in :out | (
	[:objects | objects collect: [:category | SystemOrganization listAtCategoryNamed: category]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:category | SystemOrganization listAtCategoryNamed: category]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
definitions
defdef35c40345a5047982466d86dfdfbc4
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:55:27 am'); yourself)); add: (#id->#'def35c40-345a-5047-9824-66d86dfdfbc4'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | (cls theNonMetaClass methodDict values , cls theMetaClass methodDict values) sorted: [:m1 :m2 | m1 selector <= m2 selector]]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | (cls theNonMetaClass methodDict values , cls theMetaClass methodDict values) sorted: [:m1 :m2 | m1 selector <= m2 selector]]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
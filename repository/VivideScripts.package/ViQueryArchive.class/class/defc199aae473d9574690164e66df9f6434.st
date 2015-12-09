definitions
defc199aae473d9574690164e66df9f6434
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:55:27 am'); yourself)); add: (#id->#'c199aae4-73d9-5746-9016-4e66df9f6434'); add: (#block->[:in :out | (
	[:objects | objects collect: [:method | {method methodClass theNonMetaClass. method} asTuples]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:method | {method methodClass theNonMetaClass. method} asTuples]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
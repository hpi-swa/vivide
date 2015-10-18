definitions
def2f12cab0c913b8479cf808603c49889e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 October 2015 11:08:14 am'); yourself)); add: (#id->#'2f12cab0-c913-b847-9cf8-08603c49889e'); add: (#block->[:in :out | (
	[:objects | objects collect: [:protocol | {protocol containingPackage. protocol} asTuples]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:protocol | {protocol containingPackage. protocol} asTuples]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
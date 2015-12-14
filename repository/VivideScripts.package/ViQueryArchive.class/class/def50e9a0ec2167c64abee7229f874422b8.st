definitions
def50e9a0ec2167c64abee7229f874422b8
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 December 2015 11:52:58 am'); yourself)); add: (#id->#'50e9a0ec-2167-c64a-bee7-229f874422b8'); add: (#block->[:in :out | (
	[:objects | objects collect: [:className | Smalltalk classNamed: className]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:className | Smalltalk classNamed: className]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
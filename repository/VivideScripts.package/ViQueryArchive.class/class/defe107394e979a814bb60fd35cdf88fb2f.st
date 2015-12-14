definitions
defe107394e979a814bb60fd35cdf88fb2f
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'14 December 2015 11:30:58 am'); yourself)); add: (#id->#'e107394e-979a-814b-b60f-d35cdf88fb2f'); add: (#block->[:in :out | (
	[:objects | objects collect: [:className | Smalltalk classNamed: className]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:className | Smalltalk classNamed: className]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
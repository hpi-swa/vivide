definitions
defc37e89e88db64d4485d0ccaefc64a618
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:02:31 am'); yourself)); add: (#id->#'c37e89e8-8db6-4d44-85d0-ccaefc64a618'); add: (#block->[:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
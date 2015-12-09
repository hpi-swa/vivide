definitions
def4847dd5868b2864d94ae889117f97643
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:55:27 am'); yourself)); add: (#id->#'4847dd58-68b2-864d-94ae-889117f97643'); add: (#block->[:in :out | (
	[:objects | objects collect: [:object | object class]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | object class]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
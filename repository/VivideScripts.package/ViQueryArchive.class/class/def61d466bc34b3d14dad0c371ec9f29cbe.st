definitions
def61d466bc34b3d14dad0c371ec9f29cbe
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 10:14:14 am'); yourself)); add: (#id->#'61d466bc-34b3-d14d-ad0c-371ec9f29cbe'); add: (#block->[:in :out | (
	[:objects | objects collect: [:object | object class]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | object class]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
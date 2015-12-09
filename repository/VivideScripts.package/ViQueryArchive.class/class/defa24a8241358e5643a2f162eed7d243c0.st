definitions
defa24a8241358e5643a2f162eed7d243c0
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 11:55:27 am'); yourself)); add: (#id->#'a24a8241-358e-5643-a2f1-62eed7d243c0'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | cls withAllSuperclasses]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | cls withAllSuperclasses]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)
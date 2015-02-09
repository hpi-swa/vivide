definitions
def96356d3780c57c4abff3ccf8cccb5955
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'4 February 2015 10:49:45 am'); yourself)); add: (#id->#'96356d37-80c5-7c4a-bff3-ccf8cccb5955'); add: (#block->[:in :out | (
	[:objects | objects collect: [:methodReference | methodReference]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:methodReference | methodReference]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
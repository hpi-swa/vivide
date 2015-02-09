definitions
def3fa7e3fc6307da4daeb25dc2d4cd8b81
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 2:29:06 pm'); yourself)); add: (#id->#'3fa7e3fc-6307-da4d-aeb2-5dc2d4cd8b81'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | {cls category. cls} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | {cls category. cls} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
definitions
def14a7228641f7644880abfe9e82e01880
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'0ac4418e-680a-1e41-b623-3e5bfdb8941a'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 7:07:58 pm'); yourself)); add: (#id->#'14a72286-41f7-6448-80ab-fe9e82e01880'); add: (#block->[:in :out | (
	[:objects | objects collect: [:method | {method methodClass organization categoryOfElement: method selector. method} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:method | {method methodClass organization categoryOfElement: method selector. method} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
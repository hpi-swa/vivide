definitions
def7425312bce63104f907a61011f4f8dbc
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'5 February 2015 12:29:20 pm'); yourself)); add: (#id->#'7425312b-ce63-104f-907a-61011f4f8dbc'); add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:nm :cls | {nm. (cls whichSelectorsAccess: nm) collect: [:sel | cls >> sel]} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result |
				(ViQueryInterpreter isCollection: result)
					ifTrue: [out addAll: result]
					ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:nm :cls | {nm. (cls whichSelectorsAccess: nm) collect: [:sel | cls >> sel]} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result |
				(ViQueryInterpreter isCollection: result)
					ifTrue: [out addAll: result]
					ifFalse: [out add: result]]]'); yourself)
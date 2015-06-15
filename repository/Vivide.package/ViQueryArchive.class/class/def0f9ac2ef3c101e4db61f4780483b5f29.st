definitions
def0f9ac2ef3c101e4db61f4780483b5f29
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'92af904a-14aa-db49-84ab-1697ba082636'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'15 June 2015 10:20:57 am'); yourself)); add: (#id->#'0f9ac2ef-3c10-1e4d-b61f-4780483b5f29'); add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result |
				(ViQueryInterpreter isCollection: result)
					ifTrue: [out addAll: result]
					ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result |
				(ViQueryInterpreter isCollection: result)
					ifTrue: [out addAll: result]
					ifFalse: [out add: result]]]'); yourself)
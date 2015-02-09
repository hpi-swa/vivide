definitions
def109401019b7eb244a726daec8deffe61
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 2:29:06 pm'); yourself)); add: (#id->#'10940101-9b7e-b244-a726-daec8deffe61'); add: (#block->[:in :out | (
	[:objects | objects collect: [:pkg | pkg classes]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:pkg | pkg classes]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
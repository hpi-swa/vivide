definitions
defdbf9be410b050a4982add2ca591ea8d0
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'a106f1b0-9632-e247-a7b3-e27d6eec5845'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'15 June 2015 10:20:57 am'); yourself)); add: (#id->#'dbf9be41-0b05-0a49-82ad-d2ca591ea8d0'); add: (#block->[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
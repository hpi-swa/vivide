definitions
defa106f1b09632e247a7b3e27d6eec5845
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'f4e5f3bd-7592-a54e-8b8b-8ef60b4e9cd6'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'12 May 2015 4:36:46 pm'); yourself)); add: (#id->#'a106f1b0-9632-e247-a7b3-e27d6eec5845'); add: (#block->[:in :out | (
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
definitions
defcd66251134d36347b508f1f814153716
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 February 2015 6:20:15 pm'); yourself)); add: (#id->#'cd662511-34d3-6347-b508-f1f814153716'); add: (#block->[:in :out | (
	[:objects | objects collect: [:methodContext | methodContext]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:methodContext | methodContext]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
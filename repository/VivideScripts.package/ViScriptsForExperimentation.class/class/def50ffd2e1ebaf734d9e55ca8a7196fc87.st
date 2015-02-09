definitions
def50ffd2e1ebaf734d9e55ca8a7196fc87
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 February 2015 4:07:24 pm'); yourself)); add: (#id->#'50ffd2e1-ebaf-734d-9e55-ca8a7196fc87'); add: (#block->[:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext stack]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:debugger | debugger interruptedContext stack]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
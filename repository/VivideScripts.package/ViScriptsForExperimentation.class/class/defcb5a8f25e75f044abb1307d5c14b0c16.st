definitions
defcb5a8f25e75f044abb1307d5c14b0c16
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 7:25:43 pm'); yourself)); add: (#id->#'cb5a8f25-e75f-044a-bb13-07d5c14b0c16'); add: (#block->[:in :out | (
	[:objects | objects collect: [:compiledMethod | 
	"Get current version."
	compiledMethod methodReference compiledMethod]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:compiledMethod | 
	"Get current version."
	compiledMethod methodReference compiledMethod]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
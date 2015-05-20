definitions
defe92838ffd429e24782ccde08a1a7afff
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2015 2:44:10 pm'); yourself)); add: (#id->#'e92838ff-d429-e247-82cc-de08a1a7afff'); add: (#block->[:in :out | (
	[:objects | objects collect: [:object | {
	object isVariableBinding ifTrue: ['** scripts **'] ifFalse: [object category].
	object
	} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | {
	object isVariableBinding ifTrue: [''** scripts **''] ifFalse: [object category].
	object
	} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
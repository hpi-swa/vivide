definitions
def53e2978317f64a4681a19b8ffb2d6353
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'4 March 2015 1:21:42 pm'); yourself)); add: (#id->#'53e29783-17f6-4a46-81a1-9b8ffb2d6353'); add: (#block->[:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
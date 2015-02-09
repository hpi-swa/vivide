definitions
def3624cff4e63c7e4ba23f273a85248ee5
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'5 February 2015 11:04:13 am'); yourself)); add: (#id->#'3624cff4-e63c-7e4b-a23f-273a85248ee5'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | {cls instVarNames. cls} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | {cls instVarNames. cls} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
definitions
defef49f0fbb0d03548994913882c7248a3
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 October 2014 3:26:15 pm'); yourself)); add: (#id->#'ef49f0fb-b0d0-3548-9949-13882c7248a3'); add: (#block->[:in :out | (
	[:objects | objects collect: [:byteString | byteString unescapeEntities convertFromEncoding: 'utf-8'  ]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:byteString | byteString unescapeEntities convertFromEncoding: ''utf-8''  ]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
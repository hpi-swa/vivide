definitions
defda8a8f503e4cd44c9f6445781be27672
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2015 2:49:42 pm'); yourself)); add: (#id->#'da8a8f50-3e4c-d44c-9f64-45781be27672'); add: (#block->[:in :out | (
	[:objects | objects collect: [:behavior | behavior subclasses]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:behavior | behavior subclasses]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
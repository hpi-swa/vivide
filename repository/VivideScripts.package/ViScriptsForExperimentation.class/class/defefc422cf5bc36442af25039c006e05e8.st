definitions
defefc422cf5bc36442af25039c006e05e8
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'4 February 2015 10:53:29 am'); yourself)); add: (#id->#'efc422cf-5bc3-6442-af25-039c006e05e8'); add: (#block->[:in :out | (
	[:objects | objects collect: [:methodReference | methodReference]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:methodReference | methodReference]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
definitions
def02954be5d5321844ba67d5577598c1a6
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'12 May 2015 3:24:26 pm'); yourself)); add: (#id->#'02954be5-d532-1844-ba67-d5577598c1a6'); add: (#block->[:in :out | (
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
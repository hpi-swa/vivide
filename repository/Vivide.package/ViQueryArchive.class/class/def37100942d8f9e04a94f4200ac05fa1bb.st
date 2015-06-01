definitions
def37100942d8f9e04a94f4200ac05fa1bb
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 June 2015 1:41:29 pm'); yourself)); add: (#id->#'37100942-d8f9-e04a-94f4-200ac05fa1bb'); add: (#block->[:in :out | (
	[:objects | objects collect: [:pane | pane view]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:pane | pane view]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
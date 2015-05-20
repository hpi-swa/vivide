definitions
def43a540d6480d12439f9169cbaedd58ab
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'fa044112-0baa-3e4d-abc2-c54a247e5236'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2015 2:36:10 pm'); yourself)); add: (#id->#'43a540d6-480d-1243-9f91-69cbaedd58ab'); add: (#block->[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
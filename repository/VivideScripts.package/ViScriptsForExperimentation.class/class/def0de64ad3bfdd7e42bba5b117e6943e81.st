definitions
def0de64ad3bfdd7e42bba5b117e6943e81
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'4aef482e-23b8-9945-a9ab-b3646cb84bfd'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'4 February 2015 10:49:35 am'); yourself)); add: (#id->#'0de64ad3-bfdd-7e42-bba5-b117e6943e81'); add: (#block->[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allCallsOn: symbol]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
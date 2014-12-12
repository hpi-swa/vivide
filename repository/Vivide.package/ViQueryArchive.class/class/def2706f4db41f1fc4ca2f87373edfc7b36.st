definitions
def2706f4db41f1fc4ca2f87373edfc7b36
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'44bdd3d3-ea3e-5446-8a1a-5edacc6d70f1'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 October 2014 2:50:51 pm'); yourself)); add: (#id->#'2706f4db-41f1-fc4c-a2f8-7373edfc7b36'); add: (#block->[:in :out | (
	[:objects | objects collect: [:jsonObject | jsonObject at: #body]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:jsonObject | jsonObject at: #body]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
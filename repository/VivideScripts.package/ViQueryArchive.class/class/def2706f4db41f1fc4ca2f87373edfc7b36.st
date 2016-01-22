definitions
def2706f4db41f1fc4ca2f87373edfc7b36
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:jsonObject | jsonObject at: #body]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'2706f4db-41f1-fc4c-a2f8-7373edfc7b36').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'44bdd3d3-ea3e-5446-8a1a-5edacc6d70f1').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 October 2014 2:50:51 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:jsonObject | jsonObject at: #body]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]')})
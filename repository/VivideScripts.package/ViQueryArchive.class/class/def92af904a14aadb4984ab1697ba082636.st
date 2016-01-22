definitions
def92af904a14aadb4984ab1697ba082636
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result |
				(ViQueryInterpreter isCollection: result)
					ifTrue: [out addAll: result]
					ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'92af904a-14aa-db49-84ab-1697ba082636').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'593bdfb3-b5e1-b340-a2b6-b560265da52c').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:36:46 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result |
				(ViQueryInterpreter isCollection: result)
					ifTrue: [out addAll: result]
					ifFalse: [out add: result]]]')})
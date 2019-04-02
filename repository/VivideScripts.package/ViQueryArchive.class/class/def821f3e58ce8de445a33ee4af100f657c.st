definitions
def821f3e58ce8de445a33ee4af100f657c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:e1 :e2 | e1 isDirectory or: [e2 isDirectory not]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'821f3e58-ce8d-e445-a33e-e4af100f657c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:39:51 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:e1 :e2 | e1 isDirectory or: [e2 isDirectory not]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')})
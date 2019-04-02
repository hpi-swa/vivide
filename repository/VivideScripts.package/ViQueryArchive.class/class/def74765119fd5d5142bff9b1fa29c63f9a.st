definitions
def74765119fd5d5142bff9b1fa29c63f9a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:def1 :def2 | def1 sourceCode <= def2 sourceCode] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'74765119-fd5d-5142-bff9-b1fa29c63f9a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '4 December 2013 8:37:28 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:def1 :def2 | def1 sourceCode <= def2 sourceCode] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')})
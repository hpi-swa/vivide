definitions
def1d838e84c8f61549b787c8352fea384d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:p1 :p2 | (p1 at: #name) asLowercase <= (p2 at: #name) asLowercase] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'1d838e84-c8f6-1549-b787-c8352fea384d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 5:09:20 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:p1 :p2 | (p1 at: #name) asLowercase <= (p2 at: #name) asLowercase] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')})
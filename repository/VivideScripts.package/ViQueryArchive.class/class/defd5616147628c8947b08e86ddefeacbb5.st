definitions
defd5616147628c8947b08e86ddefeacbb5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:op1 :op2 | 
	op1 definition fullTimeStamp >= op2 definition fullTimeStamp] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'d5616147-628c-8947-b08e-86ddefeacbb5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:op1 :op2 | 
	op1 definition fullTimeStamp >= op2 definition fullTimeStamp] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')})
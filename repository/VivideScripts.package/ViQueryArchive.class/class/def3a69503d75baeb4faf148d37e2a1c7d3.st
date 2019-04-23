definitions
def3a69503d75baeb4faf148d37e2a1c7d3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 asString <= obj2 asString] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'3a69503d-75ba-eb4f-af14-8d37e2a1c7d3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 asString <= obj2 asString] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')})
definitions
def72345acc63d9a6499a3ca8e82b0f7f94
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 selector <= obj2 selector]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'72345acc-63d9-a649-9a3c-a8e82b0f7f94').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:15:59 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 selector <= obj2 selector]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')})
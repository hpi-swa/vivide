definitions
def1906928d0e72ee4caa5971eacf8eb7b3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 isBehavior
		ifTrue: [true "no change"]
		ifFalse: [obj1 selector <= obj2 selector]]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'1906928d-0e72-ee4c-aa59-71eacf8eb7b3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:00:56 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 isBehavior
		ifTrue: [true "no change"]
		ifFalse: [obj1 selector <= obj2 selector]]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})
definitions
defaf03fa7cbf5f1b47b33f3937e26398b6
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
(#id -> #'af03fa7c-bf5f-1b47-b33f-3937e26398b6').
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
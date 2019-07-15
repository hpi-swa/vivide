steps
stepe4cedfc134196a46a30665067830a9bf
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'af03fa7c-bf5f-1b47-b33f-3937e26398b6').
(#iconCode -> 'nil').
(#id -> #'e4cedfc1-3419-6a46-a306-65067830a9bf').
(#isProperty -> false).
(#label -> nil).
(#next -> #'90bb3b19-d2be-164e-a306-83db53cee32e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 5480)
}))
})
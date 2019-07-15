steps
step82277b8f15e6124f96d40a482e6e0aab
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 selector <= obj2 selector]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'72345acc-63d9-a649-9a3c-a8e82b0f7f94').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:15:59 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 isVariableBinding
	ifTrue: [obj1 value <= obj2 value]
	ifFalse: [obj1 selector <= obj2 selector]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'72345acc-63d9-a649-9a3c-a8e82b0f7f94').
(#iconCode -> 'nil').
(#id -> #'82277b8f-15e6-124f-96d4-0a482e6e0aab').
(#isProperty -> false).
(#label -> nil).
(#next -> #'3949844d-11c6-dd41-b185-b338c3ca4dac').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 6:14:18 pm').
(#outputKind -> Boolean).
(#priority -> 3750)
}))
})
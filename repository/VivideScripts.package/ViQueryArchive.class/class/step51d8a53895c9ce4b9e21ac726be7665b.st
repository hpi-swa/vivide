steps
step51d8a53895c9ce4b9e21ac726be7665b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 selector <= obj2 selector] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'20a594a9-68e5-7445-a2ae-88905ba034ca').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 selector <= obj2 selector] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'20a594a9-68e5-7445-a2ae-88905ba034ca').
(#iconCode -> 'nil').
(#id -> #'51d8a538-95c9-ce4b-9e21-ac726be7665b').
(#isProperty -> false).
(#label -> nil).
(#next -> #'6f20da89-1a7e-f64d-96a6-8b4b22691ee4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 1510)
}))
})
steps
stepfca5ba471c0b0b4d8c617eca1715c0c5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 reference selector <= obj2 reference selector asString] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'b1ea8cb7-9474-e74d-8782-5419c212d539').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 reference selector <= obj2 reference selector asString] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b1ea8cb7-9474-e74d-8782-5419c212d539').
(#iconCode -> 'nil').
(#id -> #'fca5ba47-1c0b-0b4d-8c61-7eca1715c0c5').
(#isProperty -> false).
(#label -> nil).
(#next -> #'8b5ec783-b069-bd44-a805-058c53c7f164').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 1980)
}))
})
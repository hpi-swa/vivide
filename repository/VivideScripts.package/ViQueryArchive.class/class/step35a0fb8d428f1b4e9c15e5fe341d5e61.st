steps
step35a0fb8d428f1b4e9c15e5fe341d5e61
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 asString <= obj2 asString] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'04b395cd-49d7-2640-9919-1cff4dbeed76').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 asString <= obj2 asString] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'04b395cd-49d7-2640-9919-1cff4dbeed76').
(#iconCode -> 'nil').
(#id -> #'35a0fb8d-428f-1b4e-9c15-e5fe341d5e61').
(#isProperty -> false).
(#label -> nil).
(#next -> #'b2c2bd30-4cbc-ac47-a5a0-4f683a40bf26').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 2980)
}))
})
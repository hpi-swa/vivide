steps
step904c20d94fe8d644bd0dec510cf667f3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 selector <= obj2 selector] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'73314b97-72d7-dd46-8b0b-ecae7f5776f2').
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
(#definition -> #'73314b97-72d7-dd46-8b0b-ecae7f5776f2').
(#iconCode -> 'nil').
(#id -> #'904c20d9-4fe8-d644-bd0d-ec510cf667f3').
(#isProperty -> false).
(#label -> nil).
(#next -> #'79c77c1f-caea-9342-ab06-db5aad7909f0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 1300)
}))
})
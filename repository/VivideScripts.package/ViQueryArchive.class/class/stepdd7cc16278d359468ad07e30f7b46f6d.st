steps
stepdd7cc16278d359468ad07e30f7b46f6d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 selector <= obj2 selector] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'eca041ab-a8c2-8841-a7fe-769ec3a220c2').
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
(#definition -> #'eca041ab-a8c2-8841-a7fe-769ec3a220c2').
(#iconCode -> 'nil').
(#id -> #'dd7cc162-78d3-5946-8ad0-7e30f7b46f6d').
(#isProperty -> false).
(#label -> nil).
(#next -> #'92eb4914-ce3c-1f4f-b813-4bd8cf3c75a6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 1260)
}))
})
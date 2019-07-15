steps
stepda240e4d2791be42a47a879ff7f15f76
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 theClass name <= obj2 theClass name] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'64a80fd3-a399-0944-ad86-29d530feb8c8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 theClass name <= obj2 theClass name] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'64a80fd3-a399-0944-ad86-29d530feb8c8').
(#iconCode -> 'nil').
(#id -> #'da240e4d-2791-be42-a47a-879ff7f15f76').
(#isProperty -> false).
(#label -> nil).
(#next -> #'641df55b-dc10-f744-86f3-2f5eb3f970ab').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> ViClassComment).
(#outputKind -> Boolean).
(#priority -> 2300)
}))
})
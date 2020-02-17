steps
step26886f3d3ac0aa48adf2d31758e2e4ae
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 selector <= obj2 selector] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'556f57bb-c522-f64b-a6b7-96e024595d13').
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
(#definition -> #'556f57bb-c522-f64b-a6b7-96e024595d13').
(#iconCode -> 'nil').
(#id -> #'26886f3d-3ac0-aa48-adf2-d31758e2e4ae').
(#isProperty -> false).
(#label -> 'Message list').
(#next -> #'a5bdd4b4-83af-304c-89f8-f7f04e06f35c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#outputKind -> Boolean).
(#priority -> 5720).
(#view -> ViTreeViewExtended)
}))
})
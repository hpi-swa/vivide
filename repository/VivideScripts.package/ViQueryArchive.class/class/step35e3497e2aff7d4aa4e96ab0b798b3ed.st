steps
step35e3497e2aff7d4aa4e96ab0b798b3ed
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 name <= obj2 name] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'af19bbe6-f211-ae4c-bcab-b47421d805f5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 name <= obj2 name] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'af19bbe6-f211-ae4c-bcab-b47421d805f5').
(#iconCode -> 'nil').
(#id -> #'35e3497e-2aff-7d4a-a4e9-6ab0b798b3ed').
(#isProperty -> false).
(#label -> nil).
(#next -> #'181275cd-bd0c-3642-9b0d-9373d885260e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 2830)
}))
})
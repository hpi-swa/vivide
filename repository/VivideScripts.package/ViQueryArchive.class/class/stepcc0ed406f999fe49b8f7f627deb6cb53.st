steps
stepcc0ed406f999fe49b8f7f627deb6cb53
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 name <= obj2 name] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'6176bca4-96ec-344a-9c79-b28c46a0801e').
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
(#definition -> #'6176bca4-96ec-344a-9c79-b28c46a0801e').
(#iconCode -> 'nil').
(#id -> #'cc0ed406-f999-fe49-b8f7-f627deb6cb53').
(#isProperty -> false).
(#label -> nil).
(#next -> #'3640f742-68dd-e143-aec9-907f1f87a99b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:16:26 pm').
(#outputKind -> Boolean).
(#priority -> 3820)
}))
})
steps
step5ec063434180cf4da211f78d46a2112e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 name <= obj2 name] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'b70397b0-5241-8942-b6d0-dd4224e2df41').
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
(#definition -> #'b70397b0-5241-8942-b6d0-dd4224e2df41').
(#iconCode -> 'nil').
(#id -> #'5ec06343-4180-cf4d-a211-f78d46a2112e').
(#isProperty -> false).
(#label -> nil).
(#next -> #'55d465d1-f7d0-c04f-a61b-099f2ae6b6b9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 4530)
}))
})
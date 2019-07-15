steps
stepb193f637d3a4cb4b9b3e94c7b7ba29e9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:ass1 :ass2 | ass1 key <= ass2 key] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'1e58328f-7884-9b46-aac3-15d4c0d243b5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:25:52 am')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:ass1 :ass2 | ass1 key <= ass2 key] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1e58328f-7884-9b46-aac3-15d4c0d243b5').
(#iconCode -> 'nil').
(#id -> #'b193f637-d3a4-cb4b-9b3e-94c7b7ba29e9').
(#isProperty -> false).
(#label -> nil).
(#next -> #'ab4af50f-105f-424d-95d1-36bfd2f47ad3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 10:25:52 am').
(#priority -> 5070)
}))
})
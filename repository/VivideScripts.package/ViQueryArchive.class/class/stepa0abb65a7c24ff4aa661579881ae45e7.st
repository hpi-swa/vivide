steps
stepa0abb65a7c24ff4aa661579881ae45e7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 asString <= obj2 asString] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'3a69503d-75ba-eb4f-af14-8d37e2a1c7d3').
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
(#definition -> #'3a69503d-75ba-eb4f-af14-8d37e2a1c7d3').
(#iconCode -> 'nil').
(#id -> #'a0abb65a-7c24-ff4a-a661-579881ae45e7').
(#isProperty -> false).
(#label -> nil).
(#next -> #'cf440614-e202-124f-830d-3b4a1d9eef00').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 1620)
}))
})
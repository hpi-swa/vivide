steps
step5b87b137752eb346a7fb46bd574a4330
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:f1 :f2 | f1 symbol <= f2 symbol] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'5e8af872-a1c3-994d-b39f-9ea020eacf1a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:00:36 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:f1 :f2 | f1 symbol <= f2 symbol] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5e8af872-a1c3-994d-b39f-9ea020eacf1a').
(#iconCode -> 'nil').
(#id -> #'5b87b137-752e-b346-a7fb-46bd574a4330').
(#isProperty -> false).
(#label -> nil).
(#next -> #'acc3ad31-29c9-cd45-8ccc-e801aaadd858').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:00:36 pm').
(#inputKind -> ViFlagComment).
(#outputKind -> Boolean).
(#priority -> 3860)
}))
})
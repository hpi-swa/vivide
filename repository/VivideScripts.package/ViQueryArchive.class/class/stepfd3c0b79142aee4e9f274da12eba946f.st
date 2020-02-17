steps
stepfd3c0b79142aee4e9f274da12eba946f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:f1 :f2 | f1 symbol <= f2 symbol] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'e98ce1d5-8aa0-2042-9ae6-c9abd20c0fa7').
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
(#definition -> #'e98ce1d5-8aa0-2042-9ae6-c9abd20c0fa7').
(#iconCode -> 'nil').
(#id -> #'fd3c0b79-142a-ee4e-9f27-4da12eba946f').
(#isProperty -> false).
(#label -> nil).
(#next -> #'cf18cd02-0e0b-344c-a7ee-82358865b598').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:00:36 pm').
(#inputKind -> ViFlagComment).
(#outputKind -> Boolean).
(#priority -> 3360)
}))
})
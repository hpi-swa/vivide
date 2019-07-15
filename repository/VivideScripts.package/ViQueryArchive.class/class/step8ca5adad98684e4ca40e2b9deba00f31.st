steps
step8ca5adad98684e4ca40e2b9deba00f31
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:cat1 :cat2 | cat1 <= cat2] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'d49127b1-b87a-894c-9f5e-942faf7f92ba').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:cat1 :cat2 | cat1 <= cat2] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d49127b1-b87a-894c-9f5e-942faf7f92ba').
(#iconCode -> 'nil').
(#id -> #'8ca5adad-9868-4e4c-a40e-2b9deba00f31').
(#isProperty -> false).
(#label -> nil).
(#next -> #'c65a9646-727f-864b-9955-deeac8d8dcf4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 8:08:35 pm').
(#inputKind -> String).
(#outputKind -> Boolean).
(#priority -> 3560).
(#view -> ViTreeViewExtended)
}))
})
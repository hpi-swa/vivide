steps
steped98259d40bab843bb324e77d29904ec
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:ref1 :ref2 | ref1 selector < ref2 selector
	or: [ref1 selector = ref2 selector
		and: [ref1 classSymbol <= ref2 classSymbol]]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'dac0f8b1-2ad8-6c42-9926-07278d236bb0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:ref1 :ref2 | ref1 selector < ref2 selector
	or: [ref1 selector = ref2 selector
		and: [ref1 classSymbol <= ref2 classSymbol]]] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'dac0f8b1-2ad8-6c42-9926-07278d236bb0').
(#iconCode -> 'nil').
(#id -> #'ed98259d-40ba-b843-bb32-4e77d29904ec').
(#isProperty -> false).
(#label -> nil).
(#next -> #'fd62bf2f-377c-e64a-b62a-4f2399a054e1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 1200)
}))
})
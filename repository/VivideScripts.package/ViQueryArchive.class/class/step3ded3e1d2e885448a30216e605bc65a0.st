steps
step3ded3e1d2e885448a30216e605bc65a0
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 selector <= obj2 selector] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'ebae0c3b-cfd5-4e43-a72d-7de6ea73ae56').
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
(#definition -> #'ebae0c3b-cfd5-4e43-a72d-7de6ea73ae56').
(#iconCode -> 'nil').
(#id -> #'3ded3e1d-2e88-5448-a302-16e605bc65a0').
(#isProperty -> false).
(#label -> nil).
(#next -> #'d85efa7f-9578-8341-a110-19f9ca847c76').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:36:18 pm').
(#outputKind -> Boolean).
(#priority -> 3500)
}))
})
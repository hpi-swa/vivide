steps
step6094f78a9d34d8448e98bc414b414eb2
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 name asLowercase <= obj2 name asLowercase] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'59a1c15f-7e5f-cc4f-ac55-8fe079224c97').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 name asLowercase <= obj2 name asLowercase] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'59a1c15f-7e5f-cc4f-ac55-8fe079224c97').
(#iconCode -> 'nil').
(#id -> #'6094f78a-9d34-d844-8e98-bc414b414eb2').
(#isProperty -> false).
(#label -> nil).
(#next -> #'164491a2-978d-5d4e-8931-03fff9ded75e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 January 2014 3:41:26 pm').
(#outputKind -> Boolean).
(#priority -> 4600).
(#view -> ViTreeViewExtended)
}))
})
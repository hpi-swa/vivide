steps
stepe6c86a4e3d9cde46afc1e019ab13b011
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 name <= obj2 name] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'3ff73679-c13a-2a43-9153-fa01cd34192f').
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
(#definition -> #'3ff73679-c13a-2a43-9153-fa01cd34192f').
(#iconCode -> 'nil').
(#id -> #'e6c86a4e-3d9c-de46-afc1-e019ab13b011').
(#isProperty -> false).
(#label -> nil).
(#next -> #'a0430b66-9a7d-f044-be09-b17780bf171f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 February 2014 3:28:35 pm').
(#outputKind -> Boolean).
(#priority -> 5100)
}))
})
steps
stepdfb2af53c012e14aae231ee9009c0034
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 compiledMethod linesOfCode
	>= obj2 compiledMethod linesOfCode] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'1a3e1694-fcc4-e34f-b1e1-8c399643ead7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:obj1 :obj2 | obj1 compiledMethod linesOfCode
	>= obj2 compiledMethod linesOfCode] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1a3e1694-fcc4-e34f-b1e1-8c399643ead7').
(#iconCode -> 'nil').
(#id -> #'dfb2af53-c012-e14a-ae23-1ee9009c0034').
(#isProperty -> false).
(#label -> nil).
(#next -> #'9cdc94fa-da62-e042-93a1-00f1773d45fc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 3060)
}))
})
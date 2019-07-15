steps
stepac3b51604403e846987bb3be159ed5dc
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:pkg1 :pkg2 | pkg1 packageName <= pkg2 packageName] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'bee7c683-9667-a94a-b75b-5d1f78775626').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:pkg1 :pkg2 | pkg1 packageName <= pkg2 packageName] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'bee7c683-9667-a94a-b75b-5d1f78775626').
(#iconCode -> 'nil').
(#id -> #'ac3b5160-4403-e846-987b-b3be159ed5dc').
(#isProperty -> false).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 May 2014 2:54:18 pm').
(#inputKind -> PackageInfo).
(#outputKind -> Boolean).
(#priority -> 6360)
}))
})
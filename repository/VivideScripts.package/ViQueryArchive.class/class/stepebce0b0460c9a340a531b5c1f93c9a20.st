steps
stepebce0b0460c9a340a531b5c1f93c9a20
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:pkg1 :pkg2 | pkg1 packageName <= pkg2 packageName] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'a150785b-2faf-4140-8261-ca76555615a9').
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
(#definition -> #'a150785b-2faf-4140-8261-ca76555615a9').
(#iconCode -> 'nil').
(#id -> #'ebce0b04-60c9-a340-a531-b5c1f93c9a20').
(#isProperty -> false).
(#label -> nil).
(#next -> #'3cce12f6-e3d5-5b40-82fa-ff0f97f9844c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> PackageInfo).
(#outputKind -> Boolean).
(#priority -> 1070)
}))
})
steps
stepdf738ebd688287439dbb746c1bba0641
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:rep1 :rep2 | rep1 description <= rep2 description] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'6178fc64-1a38-944e-a21c-1c927b4ab225').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:rep1 :rep2 | rep1 description <= rep2 description] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6178fc64-1a38-944e-a21c-1c927b4ab225').
(#iconCode -> 'nil').
(#id -> #'df738ebd-6882-8743-9dbb-746c1bba0641').
(#isProperty -> false).
(#label -> nil).
(#next -> #'343a2282-782f-4d4b-8e98-ab5ca5e0fd36').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#outputKind -> Boolean).
(#priority -> 2610)
}))
})
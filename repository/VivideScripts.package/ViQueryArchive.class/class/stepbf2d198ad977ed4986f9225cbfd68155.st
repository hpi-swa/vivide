steps
stepbf2d198ad977ed4986f9225cbfd68155
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:o1 :o2 | o2 third withAllSuperclasses includes: o1 third] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'66fd08e2-e278-674a-8718-8113d0c269eb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:37:27 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:unsortedObjects | unsortedObjects sorted: [:tempA :tempB |
			[[:o1 :o2 | o2 third withAllSuperclasses includes: o1 third] value: tempA value: tempB]
				on: MessageNotUnderstood
				do: [:ex | true]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'66fd08e2-e278-674a-8718-8113d0c269eb').
(#iconCode -> 'nil').
(#id -> #'bf2d198a-d977-ed49-86f9-225cbfd68155').
(#isProperty -> false).
(#label -> nil).
(#next -> #'a62c6421-9b10-9841-8280-932805e5b88b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:37:27 pm').
(#priority -> 4770)
}))
})
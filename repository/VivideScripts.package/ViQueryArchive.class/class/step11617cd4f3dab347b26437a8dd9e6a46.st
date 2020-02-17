steps
step11617cd4f3dab347b26437a8dd9e6a46
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:hub | hub users collect: [:username | hub user: username]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'096ea106-96b9-854f-a70b-c5a6e40a7fe9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 5:31:55 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:hub | hub users collect: [:username | hub user: username]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'096ea106-96b9-854f-a70b-c5a6e40a7fe9').
(#iconCode -> 'nil').
(#id -> #'11617cd4-f3da-b347-b264-37a8dd9e6a46').
(#isProperty -> false).
(#label -> 'Users').
(#next -> #'43770565-2816-9048-8e6e-7364ba7aab35').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> ViSmalltalkHub).
(#priority -> 550).
(#view -> ViTreeViewExtended)
}))
})
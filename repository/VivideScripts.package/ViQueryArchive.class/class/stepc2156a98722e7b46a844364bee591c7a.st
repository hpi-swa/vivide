steps
stepc2156a98722e7b46a844364bee591c7a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:refactoring | refactoring changes changes]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'3fa85b72-177a-8f48-aba7-346d5d82755b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 June 2014 4:16:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:refactoring | refactoring changes changes]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'3fa85b72-177a-8f48-aba7-346d5d82755b').
(#iconCode -> 'nil').
(#id -> #'c2156a98-722e-7b46-a844-364bee591c7a').
(#isProperty -> false).
(#label -> 'Preview').
(#next -> #'d62c8659-3292-5541-b3b6-08b9ff46de99').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> RBRefactoring).
(#priority -> 6230).
(#view -> ViTreeViewExtended)
}))
})
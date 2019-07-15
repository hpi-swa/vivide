steps
stepa4ac81fcd21c7240abf868d76d2dc175
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:categorizer | categorizer categories]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'7561c264-00a8-ad43-b2b7-1937445a1341').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 3:49:08 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:categorizer | categorizer categories]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'7561c264-00a8-ad43-b2b7-1937445a1341').
(#iconCode -> 'UiFugueIcons categoryIcon').
(#id -> #'a4ac81fc-d21c-7240-abf8-68d76d2dc175').
(#isProperty -> false).
(#label -> 'Categories').
(#next -> #'3947aee4-5c3a-1649-8884-a37f2fcf75e9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> Categorizer).
(#priority -> 150).
(#view -> ViTreeViewExtended)
}))
})
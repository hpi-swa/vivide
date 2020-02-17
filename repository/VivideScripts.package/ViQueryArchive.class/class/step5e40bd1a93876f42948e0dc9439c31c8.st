steps
step5e40bd1a93876f42948e0dc9439c31c8
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:refs | refs gather: [:ref |
	(1 to: ref compiledMethod numLiterals - 2)
			collect: [:i | (ref compiledMethod literalAt: i)]
			thenSelect: [:o | o isSymbol]]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'a5557fdb-6830-2e40-b840-25e66a690c42').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:refs | refs gather: [:ref |
	(1 to: ref compiledMethod numLiterals - 2)
			collect: [:i | (ref compiledMethod literalAt: i)]
			thenSelect: [:o | o isSymbol]]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'a5557fdb-6830-2e40-b840-25e66a690c42').
(#iconCode -> 'UiFugueIcons scriptArrowIcon').
(#id -> #'5e40bd1a-9387-6f42-948e-0dc9439c31c8').
(#isProperty -> false).
(#label -> 'Implementors (recursive, symbols only)').
(#next -> #'a0abb65a-7c24-ff4a-a661-579881ae45e7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> MethodReference).
(#priority -> 220).
(#view -> ViTreeViewExtended)
}))
})
steps
stepdb94be9eb0285f46bfad28f781b0ae9e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref |
	ref isSymbol
		ifFalse: [
			(1 to: ref compiledMethod numLiterals - 2)
				collect: [:i | (ref compiledMethod literalAt: i)]
				thenSelect: [:o | o isSymbol]]
		ifTrue: [SystemNavigation default allImplementorsOf: ref]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'4dd99bc1-4d73-7f47-b92c-df264e88d9e1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref |
	ref isSymbol
		ifFalse: [
			(1 to: ref compiledMethod numLiterals - 2)
				collect: [:i | (ref compiledMethod literalAt: i)]
				thenSelect: [:o | o isSymbol]]
		ifTrue: [SystemNavigation default allImplementorsOf: ref]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4dd99bc1-4d73-7f47-b92c-df264e88d9e1').
(#iconCode -> 'nil').
(#id -> #'db94be9e-b028-5f46-bfad-28f781b0ae9e').
(#isProperty -> false).
(#label -> nil).
(#next -> #'5e1d1190-aaa3-2749-82c2-010ce8a97d2f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 1660)
}))
})
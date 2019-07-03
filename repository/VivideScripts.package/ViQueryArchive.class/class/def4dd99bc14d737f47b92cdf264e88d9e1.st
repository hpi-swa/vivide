definitions
def4dd99bc14d737f47b92cdf264e88d9e1
	<definition>

	^ (Dictionary newFrom: {
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
})
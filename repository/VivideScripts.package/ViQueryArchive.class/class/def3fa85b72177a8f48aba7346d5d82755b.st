definitions
def3fa85b72177a8f48aba7346d5d82755b
	<definition>

	^ (Dictionary newFrom: {
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
})
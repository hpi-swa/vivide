definitions
def5c5fa3a289098547a51de66d4d143a60
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:step | step organization referencesToStep: step]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5c5fa3a2-8909-8547-a51d-e66d4d143a60').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 September 2013 5:33:06 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:step | step organization referencesToStep: step]]
		value: in) do: [:result | out addAll: result asList]]')
})
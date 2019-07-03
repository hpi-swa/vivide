definitions
def9e4728d48b7a534abc574b8fb4453d86
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:methodReference | methodReference compiledMethod]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'9e4728d4-8b7a-534a-bc57-4b8fb4453d86').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 May 2019 4:41:08.054459 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:methodReference | methodReference compiledMethod]]
		value: in) do: [:result | out addAll: result asList]]')
})
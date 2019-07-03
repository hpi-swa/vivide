definitions
def06bccf4ef9f84647a7c4c6a623b86f81
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:wrapper | wrapper withoutListWrapper]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'06bccf4e-f9f8-4647-a7c4-c6a623b86f81').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 3:19:19 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:wrapper | wrapper withoutListWrapper]]
		value: in) do: [:result | out addAll: result asList]]')
})
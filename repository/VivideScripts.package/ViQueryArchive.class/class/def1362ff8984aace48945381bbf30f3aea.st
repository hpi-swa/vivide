definitions
def1362ff8984aace48945381bbf30f3aea
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:box | box conversations]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'1362ff89-84aa-ce48-9453-81bbf30f3aea').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:01:26 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:box | box conversations]]
		value: in) do: [:result | out addAll: result asList]]')
})
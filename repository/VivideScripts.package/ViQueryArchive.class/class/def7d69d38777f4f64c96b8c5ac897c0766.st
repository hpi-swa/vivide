definitions
def7d69d38777f4f64c96b8c5ac897c0766
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:methodReference | {methodReference classSymbol. methodReference } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'7d69d387-77f4-f64c-96b8-c5ac897c0766').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:24:20 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:methodReference | {methodReference classSymbol. methodReference } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})
definitions
def4a82b0b38ad60d4499b20b91d263e273
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ref selector]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'4a82b0b3-8ad6-0d44-99b2-0b91d263e273').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ref selector]]
		value: in) do: [:result | out addAll: result asList]]')
})
definitions
def6a90006f4daf604aadd5f6fa7102b541
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package methods]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'6a90006f-4daf-604a-add5-f6fa7102b541').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package methods]]
		value: in) do: [:result | out addAll: result asList]]')
})
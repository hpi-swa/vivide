definitions
def10c3c29da68e6841b00e1fcf98b5e06d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package classes]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'10c3c29d-a68e-6841-b00e-1fcf98b5e06d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 June 2014 3:49:58 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package classes]]
		value: in) do: [:result | out addAll: result asList]]')
})
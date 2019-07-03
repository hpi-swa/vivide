definitions
def890cf6b203710b43b442d7fe6a99ecfa
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package classes]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'890cf6b2-0371-0b43-b442-d7fe6a99ecfa').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 June 2014 3:49:58 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package classes]]
		value: in) do: [:result | out addAll: result asList]]')
})
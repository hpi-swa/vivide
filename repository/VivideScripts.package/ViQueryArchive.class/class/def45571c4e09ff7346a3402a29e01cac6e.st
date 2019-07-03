definitions
def45571c4e09ff7346a3402a29e01cac6e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:package | package methods]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'45571c4e-09ff-7346-a340-2a29e01cac6e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:package | package methods]]
		value: in) do: [:result | out addAll: result asList]]')
})
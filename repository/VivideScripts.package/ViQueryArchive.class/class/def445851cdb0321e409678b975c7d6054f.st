definitions
def445851cdb0321e409678b975c7d6054f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:archive | archive allBoxes]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'445851cd-b032-1e40-9678-b975c7d6054f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 8:53:32 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:archive | archive allBoxes]]
		value: in) do: [:result | out addAll: result asList]]')
})
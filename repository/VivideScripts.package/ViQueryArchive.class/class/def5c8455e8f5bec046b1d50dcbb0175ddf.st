definitions
def5c8455e8f5bec046b1d50dcbb0175ddf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ViFlagComment newListFromReference: ref]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5c8455e8-f5be-c046-b1d5-0dcbb0175ddf').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:34:06 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ViFlagComment newListFromReference: ref]]
		value: in) do: [:result | out addAll: result asList]]')
})
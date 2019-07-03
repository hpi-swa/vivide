definitions
def4f149274963dd44490999837864a8409
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:json | (((json at: #result) at: #hits) at: #hit) ifNil: [#()]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'4f149274-963d-d444-9099-9837864a8409').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 2:35:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:json | (((json at: #result) at: #hits) at: #hit) ifNil: [#()]]]
		value: in) do: [:result | out addAll: result asList]]')
})
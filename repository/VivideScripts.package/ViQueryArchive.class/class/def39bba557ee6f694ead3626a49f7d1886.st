definitions
def39bba557ee6f694ead3626a49f7d1886
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:morph | morph submorphs]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'39bba557-ee6f-694e-ad36-26a49f7d1886').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 February 2014 4:57:24 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:morph | morph submorphs]]
		value: in) do: [:result | out addAll: result asList]]')
})
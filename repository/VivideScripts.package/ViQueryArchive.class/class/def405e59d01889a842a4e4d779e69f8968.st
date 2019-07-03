definitions
def405e59d01889a842a4e4d779e69f8968
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:bag | bag sortedCounts in: [:histogram |
		histogram collect: [:map |
			{map key. histogram first key. map value}]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'405e59d0-1889-a842-a4e4-d779e69f8968').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:30:24 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:bag | bag sortedCounts in: [:histogram |
		histogram collect: [:map |
			{map key. histogram first key. map value}]]]]
		value: in) do: [:result | out addAll: result asList]]')
})
definitions
def5c1958ef9e37214fbf56900cd00d8b9c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:dictionary | dictionary at: #id]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5c1958ef-9e37-214f-bf56-900cd00d8b9c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 6:01:07 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:dictionary | dictionary at: #id]]
		value: in) do: [:result | out addAll: result asList]]')
})
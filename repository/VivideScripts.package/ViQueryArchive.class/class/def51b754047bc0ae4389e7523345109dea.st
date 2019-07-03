definitions
def51b754047bc0ae4389e7523345109dea
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:step | step steps]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'51b75404-7bc0-ae43-89e7-523345109dea').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:16:12 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:step | step steps]]
		value: in) do: [:result | out addAll: result asList]]')
})
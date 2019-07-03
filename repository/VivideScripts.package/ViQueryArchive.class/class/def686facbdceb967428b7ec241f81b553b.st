definitions
def686facbdceb967428b7ec241f81b553b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:fd | [fd entries] on: InvalidDirectoryError do: [#()]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'686facbd-ceb9-6742-8b7e-c241f81b553b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 4:49:40 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:fd | [fd entries] on: InvalidDirectoryError do: [#()]]]
		value: in) do: [:result | out addAll: result asList]]')
})
definitions
def81c77a15661d1e489e8185f7bdd732e2
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:history | history objects]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'81c77a15-661d-1e48-9e81-85f7bdd732e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 9:09:07 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:history | history objects]]
		value: in) do: [:result | out addAll: result asList]]')
})
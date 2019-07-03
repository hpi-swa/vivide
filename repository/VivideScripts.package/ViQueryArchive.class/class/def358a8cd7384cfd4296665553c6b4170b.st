definitions
def358a8cd7384cfd4296665553c6b4170b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | method methodClass]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'358a8cd7-384c-fd42-9666-5553c6b4170b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:48:47 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | method methodClass]]
		value: in) do: [:result | out addAll: result asList]]')
})
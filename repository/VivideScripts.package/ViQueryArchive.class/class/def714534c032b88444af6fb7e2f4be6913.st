definitions
def714534c032b88444af6fb7e2f4be6913
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object asStringOrText]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'714534c0-32b8-8444-af6f-b7e2f4be6913').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:56:04 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object asStringOrText]]
		value: in) do: [:result | out addAll: result asList]]')
})
definitions
def2abc767f15f79b4989f7a1ce37adde19
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2abc767f-15f7-9b49-89f7-a1ce37adde19').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 6:41:42 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]')
})
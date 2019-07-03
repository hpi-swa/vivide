definitions
def40e78a889b34c04aaa74b54afb8c0eb3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:history | history objects reversed]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'40e78a88-9b34-c04a-aa74-b54afb8c0eb3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '16 November 2013 4:51:28 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:history | history objects reversed]]
		value: in) do: [:result | out addAll: result asList]]')
})
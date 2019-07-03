definitions
defda8a8f503e4cd44c9f6445781be27672
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:behavior | behavior subclasses]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'da8a8f50-3e4c-d44c-9f64-45781be27672').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:49:42 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:behavior | behavior subclasses]]
		value: in) do: [:result | out addAll: result asList]]')
})
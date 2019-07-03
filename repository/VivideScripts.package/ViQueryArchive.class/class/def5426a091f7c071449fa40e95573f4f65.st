definitions
def5426a091f7c071449fa40e95573f4f65
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | pkg mcPackage]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5426a091-f7c0-7144-9fa4-0e95573f4f65').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 4:34:58 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | pkg mcPackage]]
		value: in) do: [:result | out addAll: result asList]]')
})
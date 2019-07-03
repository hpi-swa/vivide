definitions
def075b7101f948024eb6f141773a59b1fb
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:set | set asArray]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'075b7101-f948-024e-b6f1-41773a59b1fb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 2:08:29 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:set | set asArray]]
		value: in) do: [:result | out addAll: result asList]]')
})
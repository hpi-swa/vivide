definitions
def7b1e07ccd28277418f3b6ebc163b105c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | pkg systemCategories]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'7b1e07cc-d282-7741-8f3b-6ebc163b105c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 September 2013 4:54:16 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | pkg systemCategories]]
		value: in) do: [:result | out addAll: result asList]]')
})
definitions
defbc9ac28f49e4a44e850435e7bb36db7d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:histogramSpec | histogramSpec third]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'bc9ac28f-49e4-a44e-8504-35e7bb36db7d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:49:56 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:histogramSpec | histogramSpec third]]
		value: in) do: [:result | out addAll: result asList]]')
})
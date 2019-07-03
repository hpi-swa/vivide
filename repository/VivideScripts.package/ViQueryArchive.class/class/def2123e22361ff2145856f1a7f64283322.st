definitions
def2123e22361ff2145856f1a7f64283322
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:histogramSpec | histogramSpec third]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2123e223-61ff-2145-856f-1a7f64283322').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:49:56 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:histogramSpec | histogramSpec third]]
		value: in) do: [:result | out addAll: result asList]]')
})
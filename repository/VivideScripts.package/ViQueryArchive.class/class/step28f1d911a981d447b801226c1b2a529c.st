steps
step28f1d911a981d447b801226c1b2a529c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:byteSymbol | ViProfile active organization definitionById: byteSymbol]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'4b9081eb-a87f-3a43-ad52-285370c2ddac').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 6:01:26 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:byteSymbol | ViProfile active organization definitionById: byteSymbol]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4b9081eb-a87f-3a43-ad52-285370c2ddac').
(#iconCode -> 'nil').
(#id -> #'28f1d911-a981-d447-b801-226c1b2a529c').
(#isProperty -> false).
(#label -> nil).
(#next -> #'6066b71f-0782-7644-873b-d2c0d4d41a8a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 6:01:26 pm')
}))
})
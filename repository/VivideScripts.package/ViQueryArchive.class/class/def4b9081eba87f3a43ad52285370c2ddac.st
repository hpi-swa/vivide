definitions
def4b9081eba87f3a43ad52285370c2ddac
	<definition>

	^ (Dictionary newFrom: {
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
})
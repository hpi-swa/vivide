definitions
def4f03e8b903860f4290f9b17a09d3f17c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedDefinitions]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'4f03e8b9-0386-0f42-90f9-b17a09d3f17c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 8:27:11 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:organizer | organizer orderedDefinitions]]
		value: in) do: [:result | out addAll: result asList]]')
})
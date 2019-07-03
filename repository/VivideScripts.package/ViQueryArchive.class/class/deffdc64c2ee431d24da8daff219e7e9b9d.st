definitions
deffdc64c2ee431d24da8daff219e7e9b9d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:fileEntry | [fileEntry readStream upToEnd asText] on: Error do: [:ex | ex]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'fdc64c2e-e431-d24d-a8da-ff219e7e9b9d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 5:59:01 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:fileEntry | [fileEntry readStream upToEnd asText] on: Error do: [:ex | ex]]]
		value: in) do: [:result | out addAll: result asList]]')
})
definitions
defece5ad7a9f6ef34badc92fe93695dc18
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tally | (tally sonsOver: 0) sort]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'ece5ad7a-9f6e-f34b-adc9-2fe93695dc18').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tally | (tally sonsOver: 0) sort]]
		value: in) do: [:result | out addAll: result asList]]')})
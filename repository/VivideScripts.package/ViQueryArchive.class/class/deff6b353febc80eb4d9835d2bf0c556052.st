definitions
deff6b353febc80eb4d9835d2bf0c556052
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cs | cs methodChanges associations]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'f6b353fe-bc80-eb4d-9835-d2bf0c556052').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:56:12 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cs | cs methodChanges associations]]
		value: in) do: [:result | out addAll: result asList]]')})
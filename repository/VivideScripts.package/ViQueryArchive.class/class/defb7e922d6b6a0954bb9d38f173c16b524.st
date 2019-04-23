definitions
defb7e922d6b6a0954bb9d38f173c16b524
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | method compiledMethod]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'b7e922d6-b6a0-954b-b9d3-8f173c16b524').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 February 2016 2:17:14 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | method compiledMethod]]
		value: in) do: [:result | out addAll: result asList]]')})
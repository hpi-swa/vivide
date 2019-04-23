definitions
def70b027c49ba51d4c999dea125ea39eaa
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:node | node children]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'70b027c4-9ba5-1d4c-999d-ea125ea39eaa').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:26:37 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:node | node children]]
		value: in) do: [:result | out addAll: result asList]]')})
definitions
def0f9ac2ef3c101e4db61f4780483b5f29
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'0f9ac2ef-3c10-1e4d-b61f-4780483b5f29').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:label :object | object] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})
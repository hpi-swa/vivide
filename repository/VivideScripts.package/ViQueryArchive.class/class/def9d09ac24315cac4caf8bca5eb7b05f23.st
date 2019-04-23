definitions
def9d09ac24315cac4caf8bca5eb7b05f23
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:class | ViProtocol protocolsForClass: class]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'9d09ac24-315c-ac4c-af8b-ca5eb7b05f23').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 October 2015 11:03:50 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:class | ViProtocol protocolsForClass: class]]
		value: in) do: [:result | out addAll: result asList]]')})
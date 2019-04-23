definitions
defb702818ff9dfff4d86c7542fcbfbfd7b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:byteString | ViProfile active organization definitionById: byteString ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'b702818f-f9df-ff4d-86c7-542fcbfbfd7b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 April 2019 4:54:30.832086 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:byteString | ViProfile active organization definitionById: byteString ]]
		value: in) do: [:result | out addAll: result asList]]')})
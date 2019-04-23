definitions
defeeac0bd5d8d92f4fac607fd29bee41b8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:byteString | byteString asHtmlText]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'eeac0bd5-d8d9-2f4f-ac60-7fd29bee41b8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 October 2014 3:25:39 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:byteString | byteString asHtmlText]]
		value: in) do: [:result | out addAll: result asList]]')})
definitions
defdbf9be410b050a4982add2ca591ea8d0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'dbf9be41-0b05-0a49-82ad-d2ca591ea8d0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:group | group expandGroup]]
		value: in) do: [:result | out addAll: result asList]]')})
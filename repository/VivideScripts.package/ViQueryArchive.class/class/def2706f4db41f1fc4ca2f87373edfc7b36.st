definitions
def2706f4db41f1fc4ca2f87373edfc7b36
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:jsonObject | jsonObject at: #body]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2706f4db-41f1-fc4c-a2f8-7373edfc7b36').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 October 2014 2:50:51 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:jsonObject | jsonObject at: #body]]
		value: in) do: [:result | out addAll: result asList]]')
})
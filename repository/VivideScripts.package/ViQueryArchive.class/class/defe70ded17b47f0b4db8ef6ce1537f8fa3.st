definitions
defe70ded17b47f0b4db8ef6ce1537f8fa3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:binding | binding value]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'e70ded17-b47f-0b4d-b8ef-6ce1537f8fa3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 8:38:45 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:binding | binding value]]
		value: in) do: [:result | out addAll: result asList]]')})
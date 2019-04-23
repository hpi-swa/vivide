definitions
def94dbf26b253fca4f9cd21b34d9e04fef
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:packageOrganizer | packageOrganizer packages]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'94dbf26b-253f-ca4f-9cd2-1b34d9e04fef').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:08:56 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:packageOrganizer | packageOrganizer packages]]
		value: in) do: [:result | out addAll: result asList]]')})
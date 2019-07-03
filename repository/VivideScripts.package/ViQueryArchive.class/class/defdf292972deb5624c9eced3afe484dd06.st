definitions
defdf292972deb5624c9eced3afe484dd06
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:packageOrganizer | packageOrganizer packages]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'df292972-deb5-624c-9ece-d3afe484dd06').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:08:56 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:packageOrganizer | packageOrganizer packages]]
		value: in) do: [:result | out addAll: result asList]]')
})
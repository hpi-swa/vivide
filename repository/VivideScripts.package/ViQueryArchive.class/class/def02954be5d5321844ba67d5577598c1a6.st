definitions
def02954be5d5321844ba67d5577598c1a6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'02954be5-d532-1844-ba67-d5577598c1a6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 3:24:26 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result | out addAll: result asList]]')})
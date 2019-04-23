definitions
def2443c58598be80488a9a537005b3d798
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:def | def organization referencesToDefinition: def]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'2443c585-98be-8048-8a9a-537005b3d798').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 September 2013 12:03:08 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:def | def organization referencesToDefinition: def]]
		value: in) do: [:result | out addAll: result asList]]')})
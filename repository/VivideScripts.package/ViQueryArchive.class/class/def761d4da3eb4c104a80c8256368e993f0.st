definitions
def761d4da3eb4c104a80c8256368e993f0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:morph | morph submorphs]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'761d4da3-eb4c-104a-80c8-256368e993f0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 February 2014 4:57:24 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:morph | morph submorphs]]
		value: in) do: [:result | out addAll: result asList]]')})
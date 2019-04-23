definitions
def1ffcc4811d37ca47802fa4783a24e092
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'1ffcc481-1d37-ca47-802f-a4783a24e092').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:morph | morph]]
		value: in) do: [:result | out addAll: result asList]]')})
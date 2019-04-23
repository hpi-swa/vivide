definitions
def14088e4748f64547af421b62af4de979
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:sysO | sysO categories collect: [:cat | cat -> sysO]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'14088e47-48f6-4547-af42-1b62af4de979').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:24:55 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:sysO | sysO categories collect: [:cat | cat -> sysO]]]
		value: in) do: [:result | out addAll: result asList]]')})
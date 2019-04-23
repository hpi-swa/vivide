definitions
def61d466bc34b3d14dad0c371ec9f29cbe
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object | object class]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'61d466bc-34b3-d14d-ad0c-371ec9f29cbe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:14:14 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object | object class]]
		value: in) do: [:result | out addAll: result asList]]')})
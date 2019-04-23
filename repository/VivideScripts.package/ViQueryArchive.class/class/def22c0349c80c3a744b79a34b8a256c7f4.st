definitions
def22c0349c80c3a744b79a34b8a256c7f4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:morph | morph submorphs]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'22c0349c-80c3-a744-b79a-34b8a256c7f4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:58 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:morph | morph submorphs]]
		value: in) do: [:result | out addAll: result asList]]')})
definitions
defe107394e979a814bb60fd35cdf88fb2f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:className | Smalltalk classNamed: className]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'e107394e-979a-814b-b60f-d35cdf88fb2f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:30:58 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:className | Smalltalk classNamed: className]]
		value: in) do: [:result | out addAll: result asList]]')})
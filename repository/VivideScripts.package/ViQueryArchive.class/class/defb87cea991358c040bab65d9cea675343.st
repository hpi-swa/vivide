definitions
defb87cea991358c040bab65d9cea675343
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:classOrText | classOrText isBehavior ifTrue: [classOrText]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'b87cea99-1358-c040-bab6-5d9cea675343').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 April 2019 9:02:53.560845 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:classOrText | classOrText isBehavior ifTrue: [classOrText]]]
		value: in) do: [:result | out addAll: result asList]]')})
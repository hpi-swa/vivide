definitions
defc6d233ab76a41344af0974f78f9a36ad
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'c6d233ab-76a4-1344-af09-74f78f9a36ad').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 10:48:47 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]')})
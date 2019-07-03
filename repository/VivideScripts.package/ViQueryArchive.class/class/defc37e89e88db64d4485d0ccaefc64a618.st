definitions
defc37e89e88db64d4485d0ccaefc64a618
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'c37e89e8-8db6-4d44-85d0-ccaefc64a618').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:02:31 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ref isValid
		ifTrue: [ref compiledMethod]]]
		value: in) do: [:result | out addAll: result asList]]')
})
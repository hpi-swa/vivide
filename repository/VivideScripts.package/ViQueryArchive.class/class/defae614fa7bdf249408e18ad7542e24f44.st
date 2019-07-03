definitions
defae614fa7bdf249408e18ad7542e24f44
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | cls subclasses]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'ae614fa7-bdf2-4940-8e18-ad7542e24f44').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 1:06:03 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | cls subclasses]]
		value: in) do: [:result | out addAll: result asList]]')
})
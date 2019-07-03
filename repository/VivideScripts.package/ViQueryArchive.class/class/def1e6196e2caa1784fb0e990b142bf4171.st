definitions
def1e6196e2caa1784fb0e990b142bf4171
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:c1 :c2 | { c1. c2. (c1 instVarNames ifEmpty: ['-- no inst vars --'])} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'1e6196e2-caa1-784f-b0e9-90b142bf4171').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2018 5:15:45 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:c1 :c2 | { c1. c2. (c1 instVarNames ifEmpty: [''-- no inst vars --''])} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')
})
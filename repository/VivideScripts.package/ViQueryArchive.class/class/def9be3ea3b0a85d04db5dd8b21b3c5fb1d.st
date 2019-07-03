definitions
def9be3ea3b0a85d04db5dd8b21b3c5fb1d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | {cls withAllSuperclasses. cls} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'9be3ea3b-0a85-d04d-b5dd-8b21b3c5fb1d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2018 4:36:50 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | {cls withAllSuperclasses. cls} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})
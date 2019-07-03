definitions
def0804698958689e40955589097b649956
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:viQueryStepDefinition | viQueryStepDefinition references
	]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'08046989-5868-9e40-9555-89097b649956').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 April 2019 4:54:53.236086 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:viQueryStepDefinition | viQueryStepDefinition references
	]]
		value: in) do: [:result | out addAll: result asList]]')
})
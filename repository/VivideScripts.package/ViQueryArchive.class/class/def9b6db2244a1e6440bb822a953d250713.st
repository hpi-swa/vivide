definitions
def9b6db2244a1e6440bb822a953d250713
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:tally | tally process
	ifNil: ['Other Processes']
	ifNotNil: [:p | p browserPrintString escapeHtmlText]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'9b6db224-4a1e-6440-bb82-2a953d250713').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:tally | tally process
	ifNil: [''Other Processes'']
	ifNotNil: [:p | p browserPrintString escapeHtmlText]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})
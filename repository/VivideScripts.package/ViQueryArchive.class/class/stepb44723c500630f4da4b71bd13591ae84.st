steps
stepb44723c500630f4da4b71bd13591ae84
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
})).
(#className -> #ViScriptStep).
(#definition -> #'9b6db224-4a1e-6440-bb82-2a953d250713').
(#iconCode -> 'nil').
(#id -> #'b44723c5-0063-0f4d-a4b7-1bd13591ae84').
(#isProperty -> false).
(#label -> nil).
(#next -> #'fb29cb24-9914-764a-864e-6e8e1cf8ace2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2330)
}))
})
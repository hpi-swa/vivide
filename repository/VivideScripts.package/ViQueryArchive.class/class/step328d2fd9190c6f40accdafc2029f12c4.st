steps
step328d2fd9190c6f40accdafc2029f12c4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: ['local']
	ifNotNil: [:pkg | (ViLabelServiceForEclipse new doMCPackage: pkg mcPackage), '.', pkg name asLowercase]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'dea80ea8-d8f4-d643-b24b-c7b6174863ff').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 3:17:34 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ungroupedObject | { [:cls | (PackageOrganizer default packageOfClass: cls ifNone: [])
	ifNil: [''local'']
	ifNotNil: [:pkg | (ViLabelServiceForEclipse new doMCPackage: pkg mcPackage), ''.'', pkg name asLowercase]] value: ungroupedObject . ungroupedObject } asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'dea80ea8-d8f4-d643-b24b-c7b6174863ff').
(#iconCode -> 'nil').
(#id -> #'328d2fd9-190c-6f40-accd-afc2029f12c4').
(#isProperty -> false).
(#label -> nil).
(#next -> #'587641c1-faab-d84d-a002-1c90308297e1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 3:17:34 pm').
(#priority -> 4000)
}))
})